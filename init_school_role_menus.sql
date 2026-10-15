SET NAMES utf8mb4;

START TRANSACTION;

DROP TEMPORARY TABLE IF EXISTS tmp_school_role_menu;

CREATE TEMPORARY TABLE tmp_school_role_menu (
    role_id INT NOT NULL,
    menu_id INT NOT NULL,
    PRIMARY KEY (role_id, menu_id)
);

-- 教务处：全校业务查询、业务填报管理、教育部导出及统计。
-- 不授予学院内部审批入口 176、180。
INSERT IGNORE INTO tmp_school_role_menu VALUES
(4,160),(4,168),(4,169),(4,170),
(4,171),(4,172),(4,173),(4,174),
(4,175),(4,177),
(4,178),(4,179),(4,181),
(4,182),(4,183),(4,184),(4,185),
(4,186),(4,187),(4,188),(4,189),
(4,190),(4,191),(4,192),(4,193),(4,194),(4,195);

-- 教学秘书：本学院业务维护、申报和材料提交。
INSERT IGNORE INTO tmp_school_role_menu VALUES
(9,160),(9,168),(9,169),(9,170),
(9,171),(9,172),(9,173),(9,174),
(9,175),(9,177),
(9,178),(9,179),(9,181),
(9,182),(9,184),(9,185);

-- 教师：仅限本人负责或被授权的教学班、任务和申报。
INSERT IGNORE INTO tmp_school_role_menu VALUES
(10,171),(10,172),(10,173),(10,174),
(10,175),(10,177),
(10,178),(10,179),(10,181);

-- 教学副院长：本学院业务查看、保险审核、假期实习审批、
-- 特色学院年度数据审核。
INSERT IGNORE INTO tmp_school_role_menu VALUES
(8,160),(8,169),
(8,171),(8,172),(8,173),(8,174),
(8,175),(8,176),(8,177),
(8,178),(8,179),(8,180),(8,181),
(8,182),(8,184),(8,185);

-- 副书记：本学院假期及分散实习审批。
INSERT IGNORE INTO tmp_school_role_menu VALUES
(7,178),(7,179),(7,180),(7,181);

-- 院长：本学院假期及分散实习审批及相关记录。
INSERT IGNORE INTO tmp_school_role_menu VALUES
(6,178),(6,179),(6,180),(6,181);

-- 书记：本学院假期及分散实习审批及相关记录。
INSERT IGNORE INTO tmp_school_role_menu VALUES
(5,178),(5,179),(5,180),(5,181);

-- 根据二级菜单自动补齐一级目录。
INSERT IGNORE INTO tmp_school_role_menu (role_id,menu_id)
SELECT DISTINCT t.role_id,m.parent_id
FROM tmp_school_role_menu t
JOIN sys_menu m ON m.id=t.menu_id
WHERE m.parent_id IN (159,161,162,163,164,165,166);

-- 检查是否存在无效角色或菜单引用。
SELECT t.*
FROM tmp_school_role_menu t
LEFT JOIN sys_role r ON r.id=t.role_id
LEFT JOIN sys_menu m ON m.id=t.menu_id
WHERE r.id IS NULL
   OR m.id IS NULL
   OR m.is_deleted<>0;

-- 只清理七个业务角色在本次业务菜单范围内的旧关联。
DELETE FROM sys_role_menus
WHERE role_id BETWEEN 4 AND 10
  AND menu_id BETWEEN 159 AND 195;

-- 写入新的差异化菜单关联。
INSERT IGNORE INTO sys_role_menus (role_id,menu_id)
SELECT role_id,menu_id
FROM tmp_school_role_menu;

-- 教务处复用原生系统管理菜单。
INSERT IGNORE INTO sys_role_menus (role_id,menu_id)
VALUES
(4,1),
(4,12),
(4,13),
(4,15),
(4,17),
(4,18);

-- 核查七角色业务菜单数量。
SELECT
 r.id,
 r.name,
 COUNT(DISTINCT CASE
   WHEN m.id BETWEEN 159 AND 195 THEN m.id
 END) AS business_menu_count
FROM sys_role r
LEFT JOIN sys_role_menus rm ON rm.role_id=r.id
LEFT JOIN sys_menu m ON m.id=rm.menu_id
WHERE r.id BETWEEN 4 AND 10
GROUP BY r.id,r.name
ORDER BY r.id;

-- 核查每个角色的实际菜单清单。
SELECT
 r.name AS role_name,
 m.id AS menu_id,
 m.name AS menu_name,
 m.parent_id,
 m.hidden
FROM sys_role_menus rm
JOIN sys_role r ON r.id=rm.role_id
JOIN sys_menu m ON m.id=rm.menu_id
WHERE r.id BETWEEN 4 AND 10
  AND m.id BETWEEN 159 AND 195
ORDER BY r.id,m.id;

-- 检查是否错误地给非教务处角色分配教育部及统计菜单。
SELECT rm.role_id,rm.menu_id,m.name
FROM sys_role_menus rm
JOIN sys_menu m ON m.id=rm.menu_id
WHERE rm.role_id BETWEEN 5 AND 10
  AND (
       m.id IN (165,166)
       OR m.id BETWEEN 186 AND 195
  );

-- 本文件不自动提交，检查结果后手动 COMMIT 或 ROLLBACK。