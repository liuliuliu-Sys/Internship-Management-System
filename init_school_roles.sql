START TRANSACTION;

INSERT INTO sys_role
(
    name,
    code,
    `order`,
    status,
    description,
    data_scope,
    uuid,
    is_deleted,
    created_time,
    updated_time
)
SELECT
    r.name,
    r.code,
    r.sort_order,
    0,
    r.description,
    1,
    UUID(),
    0,
    NOW(),
    NOW()
FROM
(
    SELECT 1 AS sort_order, '教务处' AS name, 'academic_affairs' AS code, '学校教务管理及系统业务统筹' AS description
    UNION ALL
    SELECT 2, '书记', 'party_secretary', '学院党委书记'
    UNION ALL
    SELECT 3, '院长', 'dean', '学院院长'
    UNION ALL
    SELECT 4, '副书记', 'deputy_secretary', '学院党委副书记'
    UNION ALL
    SELECT 5, '教学副院长', 'vice_dean_teaching', '学院教学副院长'
    UNION ALL
    SELECT 6, '教学秘书', 'teaching_secretary', '学院实习材料汇总及业务管理'
    UNION ALL
    SELECT 7, '教师', 'teacher', '教学班及实习任务相关业务'
) AS r
WHERE NOT EXISTS
(
    SELECT 1
    FROM sys_role AS existing
    WHERE existing.code = r.code
);

COMMIT;

SELECT
    id,
    name AS '角色名称',
    code AS '角色编码',
    `order` AS '排序',
    CASE status
        WHEN 0 THEN '启用'
        ELSE '停用'
    END AS '状态'
FROM sys_role
WHERE code IN
(
    'academic_affairs',
    'party_secretary',
    'dean',
    'deputy_secretary',
    'vice_dean_teaching',
    'teaching_secretary',
    'teacher'
)
ORDER BY `order`;