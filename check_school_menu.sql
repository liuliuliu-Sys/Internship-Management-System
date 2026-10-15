SET NAMES utf8mb4;

SELECT
    id,
    parent_id,
    name,
    title,
    type,
    `order` AS sort_order,
    route_name,
    route_path,
    component_path,
    hidden,
    status,
    is_deleted
FROM sys_menu
WHERE
    route_path LIKE '%internship%'
    OR name LIKE '%实习%'
    OR name LIKE '%基地%'
    OR name LIKE '%保险%'
    OR name LIKE '%学院%'
    OR name LIKE '%教育部%'
    OR name LIKE '%统计%'
    OR name LIKE '%权限%'
ORDER BY parent_id, `order`, id;

SHOW TABLES LIKE '%role%menu%';

SELECT id, name, code, status
FROM sys_role
ORDER BY id;