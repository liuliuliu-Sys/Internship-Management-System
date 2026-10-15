SET NAMES utf8mb4;

START TRANSACTION;

-- 1. 临时调整原部门编码，避免唯一索引冲突
UPDATE sys_dept
SET code = CONCAT('CCUT_TMP_', id),
    updated_time = NOW()
WHERE id BETWEEN 2 AND 8;

-- 2. 将原学校根节点改为一级教务处
UPDATE sys_dept
SET name = '教务处',
    code = 'ACADEMIC_AFFAIRS',
    parent_id = NULL,
    description = '长春工业大学教务处（系统一级管理部门）',
    `order` = 1,
    status = 0,
    is_deleted = 0,
    updated_time = NOW()
WHERE id = 1 AND code = 'CCUT';

-- 3. 调整原有七条二级部门
UPDATE sys_dept
SET
    name = CASE id
        WHEN 2 THEN '机电工程学院'
        WHEN 3 THEN '计算机科学与工程学院'
        WHEN 4 THEN '车辆与交通学院'
        WHEN 5 THEN '电气与电子工程学院'
        WHEN 6 THEN '材料科学与工程学院'
        WHEN 7 THEN '经济管理学院'
        WHEN 8 THEN '外国语学院'
    END,
    code = CASE id
        WHEN 2 THEN 'COLLEGE_ME'
        WHEN 3 THEN 'COLLEGE_CS'
        WHEN 4 THEN 'COLLEGE_VT'
        WHEN 5 THEN 'COLLEGE_EE'
        WHEN 6 THEN 'COLLEGE_MSE'
        WHEN 7 THEN 'COLLEGE_EM'
        WHEN 8 THEN 'COLLEGE_FL'
    END,
    parent_id = 1,
    `order` = CASE id
        WHEN 2 THEN 1
        WHEN 6 THEN 2
        WHEN 5 THEN 3
        WHEN 3 THEN 4
        WHEN 4 THEN 6
        WHEN 7 THEN 10
        WHEN 8 THEN 13
    END,
    status = 0,
    is_deleted = 0,
    description = '长春工业大学二级学院',
    updated_time = NOW()
WHERE id BETWEEN 2 AND 8;

-- 4. 补齐剩余九个学院
INSERT INTO sys_dept
(
    name, code, parent_id, status, description,
    `order`, uuid, is_deleted, created_time, updated_time
)
SELECT
    d.name,
    d.code,
    1,
    0,
    '长春工业大学二级学院',
    d.sort_order,
    UUID(),
    0,
    NOW(),
    NOW()
FROM (
    SELECT 5 AS sort_order, '化学工程学院（碳纤维学院）' AS name, 'COLLEGE_CHE' AS code
    UNION ALL SELECT 7, '数学与统计学院', 'COLLEGE_MS'
    UNION ALL SELECT 8, '化学与生命科学学院', 'COLLEGE_CLS'
    UNION ALL SELECT 9, '马克思主义学院', 'COLLEGE_MARX'
    UNION ALL SELECT 11, '公共管理学院', 'COLLEGE_PA'
    UNION ALL SELECT 12, '新闻与传播学院', 'COLLEGE_JC'
    UNION ALL SELECT 14, '艺术设计学院', 'COLLEGE_AD'
    UNION ALL SELECT 15, '应用技术学院', 'COLLEGE_AT'
    UNION ALL SELECT 16, '国际教育学院', 'COLLEGE_IE'
) AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM sys_dept existing
    WHERE existing.code = d.code
);

COMMIT;

-- 5. 验证最终结果
SELECT
    id, name, code, parent_id, status, is_deleted
FROM sys_dept
ORDER BY parent_id, `order`, id;

SELECT
    COUNT(*) AS total_departments,
    SUM(parent_id IS NULL) AS first_level_count,
    SUM(parent_id = 1) AS second_level_count
FROM sys_dept
WHERE is_deleted = 0;