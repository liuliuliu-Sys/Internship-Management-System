SET NAMES utf8mb4;

START TRANSACTION;

-- 1. 调整原有基地菜单，保留 ID 和路由
UPDATE sys_menu
SET
    name = '产教融合基地管理',
    title = '产教融合基地管理',
    `order` = 10,
    updated_time = NOW()
WHERE id = 159
  AND parent_id IS NULL
  AND is_deleted = 0;

UPDATE sys_menu
SET
    name = '基地信息管理',
    title = '基地信息管理',
    updated_time = NOW()
WHERE id = 160
  AND parent_id = 159
  AND is_deleted = 0;

-- 2. 建立尚未开发的一级业务目录
-- hidden=1：暂时隐藏，避免出现无法打开的菜单
-- 不设置 component_path，不创建虚假的业务页面

INSERT INTO sys_menu
(
    name, type, `order`, permission, icon,
    route_name, route_path, component_path, redirect,
    hidden, keep_alive, always_show, title, params,
    affix, link, is_iframe, is_hide_tab, active_path,
    show_badge, show_text_badge, scope, status,
    description, parent_id, uuid, is_deleted,
    created_time, updated_time
)
SELECT
    x.name, 1, x.sort_order, NULL, x.icon,
    x.route_name, x.route_path, NULL, NULL,
    1, 1, 0, x.name, NULL,
    0, NULL, 0, 0, NULL,
    0, NULL, 'web', 0,
    '学生实习管理平台业务目录，页面开发完成后开放',
    NULL, UUID(), 0, NOW(), NOW()
FROM
(
    SELECT
        '学生实习排课管理' AS name,
        20 AS sort_order,
        'ri:calendar-schedule-line' AS icon,
        'InternshipSchedule' AS route_name,
        '/internship-schedule' AS route_path

    UNION ALL SELECT
        '实习保险管理', 30,
        'ri:shield-check-line',
        'InternshipInsurance',
        '/internship-insurance'

    UNION ALL SELECT
        '假期及分散实习管理', 40,
        'ri:calendar-event-line',
        'InternshipHoliday',
        '/internship-holiday'

    UNION ALL SELECT
        '特色学院管理', 50,
        'ri:school-line',
        'SpecialCollege',
        '/special-college'

    UNION ALL SELECT
        '教育部实习系统对接', 60,
        'ri:file-excel-2-line',
        'InternshipExport',
        '/internship-export'

    UNION ALL SELECT
        '统计分析管理', 70,
        'ri:bar-chart-box-line',
        'InternshipStatistics',
        '/internship-statistics'
) AS x
WHERE NOT EXISTS
(
    SELECT 1
    FROM sys_menu AS m
    WHERE m.route_path = x.route_path
      AND m.scope = 'web'
      AND m.is_deleted = 0
);

-- 3. 检查本次调整结果
SELECT
    id,
    parent_id,
    name,
    type,
    `order` AS sort_order,
    route_path,
    component_path,
    hidden
FROM sys_menu
WHERE id IN (159, 160)
   OR route_path IN
   (
       '/internship-schedule',
       '/internship-insurance',
       '/internship-holiday',
       '/special-college',
       '/internship-export',
       '/internship-statistics'
   )
ORDER BY `order`, id;

-- 4. 检查是否存在重复的业务目录
SELECT route_path, COUNT(*) AS menu_count
FROM sys_menu
WHERE is_deleted = 0
  AND scope = 'web'
  AND route_path IN
  (
      '/internship-schedule',
      '/internship-insurance',
      '/internship-holiday',
      '/special-college',
      '/internship-export',
      '/internship-statistics'
  )
GROUP BY route_path
HAVING COUNT(*) > 1;

-- 请检查以上结果后，手动决定 COMMIT 或 ROLLBACK。
-- 本文件故意不自动提交。