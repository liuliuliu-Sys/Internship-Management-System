START TRANSACTION;

-- 1. 将原系统部门调整为学校根节点
UPDATE sys_dept
SET name = '测试大学',
    code = 'SCHOOL',
    description = '学校根部门（Mock数据）',
    updated_time = NOW()
WHERE id = 1
  AND code = 'DEFAULT'
  AND parent_id IS NULL;

-- 2. 插入学校下属部门
INSERT INTO sys_dept
(
    name,
    code,
    parent_id,
    status,
    description,
    `order`,
    uuid,
    is_deleted,
    created_time,
    updated_time
)
SELECT
    d.name,
    d.code,
    1,
    0,
    '学校实习管理系统Mock部门',
    d.sort_order,
    UUID(),
    0,
    NOW(),
    NOW()
FROM (
    SELECT 1 AS sort_order, '教务处' AS name, 'ACADEMIC_AFFAIRS' AS code
    UNION ALL SELECT 2, '计算机科学与技术学院', 'COLLEGE_CS'
    UNION ALL SELECT 3, '机械工程学院', 'COLLEGE_ME'
    UNION ALL SELECT 4, '电气与电子工程学院', 'COLLEGE_EE'
    UNION ALL SELECT 5, '材料科学与工程学院', 'COLLEGE_MSE'
    UNION ALL SELECT 6, '经济管理学院', 'COLLEGE_EM'
    UNION ALL SELECT 7, '外国语学院', 'COLLEGE_FL'
) AS d
WHERE EXISTS (
    SELECT 1 FROM sys_dept root
    WHERE root.id = 1 AND root.code = 'SCHOOL'
)
AND NOT EXISTS (
    SELECT 1 FROM sys_dept existing
    WHERE existing.code = d.code
);

COMMIT;

SELECT id,name,code,parent_id,status
FROM sys_dept
ORDER BY id;
