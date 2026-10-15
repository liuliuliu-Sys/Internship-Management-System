SET NAMES utf8mb4;
START TRANSACTION;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0201108', '金属材料工程', 6, 'MOCK_MAJOR_0001', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0203008', '材料物理', 6, 'MOCK_MAJOR_0002', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0202108', '材料成型及控制工程', 6, 'MOCK_MAJOR_0003', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0901003', '法学', 13, 'MOCK_MAJOR_0004', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0602108', '高分子材料与工程', 6, 'MOCK_MAJOR_0005', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0601008', '化学工程与工艺', 9, 'MOCK_MAJOR_0006', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0607008', '化妆品技术与工程', 9, 'MOCK_MAJOR_0007', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0604008', '环境工程', 9, 'MOCK_MAJOR_0008', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0606008', '涂料工程', 9, 'MOCK_MAJOR_0009', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0603008', '制药工程', 9, 'MOCK_MAJOR_0010', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0705008', '材料化学', 6, 'MOCK_MAJOR_0011', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0704007', '化学', 11, 'MOCK_MAJOR_0012', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0703008', '生物工程', 11, 'MOCK_MAJOR_0013', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0701008', '食品科学与工程', 11, 'MOCK_MAJOR_0014', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0106008', '车辆工程', 4, 'MOCK_MAJOR_0015', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0104012', '工业工程', 2, 'MOCK_MAJOR_0016', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0103008', '工业设计', 2, 'MOCK_MAJOR_0017', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0105008', '机械电子工程', 2, 'MOCK_MAJOR_0018', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0101108', '机械工程', 2, 'MOCK_MAJOR_0019', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0107008', '智能制造工程', 2, 'MOCK_MAJOR_0020', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0401108', '计算机科学与技术', 3, 'MOCK_MAJOR_0021', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0405308', '信息安全', 3, 'MOCK_MAJOR_0022', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0404108', '软件工程', 3, 'MOCK_MAJOR_0023', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('3604008', '计算机科学与技术（合作办学）', 17, 'MOCK_MAJOR_0024', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0402108', '电子信息工程', 5, 'MOCK_MAJOR_0025', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1003005', '俄语', 8, 'MOCK_MAJOR_0026', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1004005', '翻译', 8, 'MOCK_MAJOR_0027', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1002005', '日语', 8, 'MOCK_MAJOR_0028', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1001005', '英语', 8, 'MOCK_MAJOR_0029', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1203013', '动画', 15, 'MOCK_MAJOR_0030', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1204013', '服装与服饰设计', 15, 'MOCK_MAJOR_0031', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1202013', '环境设计', 15, 'MOCK_MAJOR_0032', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1201013', '视觉传达设计', 15, 'MOCK_MAJOR_0033', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('2401Z08', '机械工程（2年制专升本）', 2, 'MOCK_MAJOR_0034', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('2402Z08', '计算机科学与技术（2年制专升本）', 3, 'MOCK_MAJOR_0035', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('3601008', '机械工程（合作办学）', 17, 'MOCK_MAJOR_0036', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('3605008', '工业工程（合作办学）', 17, 'MOCK_MAJOR_0037', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0303008', '测控技术与仪器', 5, 'MOCK_MAJOR_0038', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0302108', '电气工程及其自动化', 5, 'MOCK_MAJOR_0039', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('3603008', '电气工程及其自动化（合作办学）', 17, 'MOCK_MAJOR_0040', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0301008', '自动化', 5, 'MOCK_MAJOR_0041', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0501012', '工商管理', 7, 'MOCK_MAJOR_0042', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0503002', '国际经济与贸易', 7, 'MOCK_MAJOR_0043', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0507002', '金融学', 7, 'MOCK_MAJOR_0044', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0506012', '会计学', 7, 'MOCK_MAJOR_0045', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('000000', '不限定专业', NULL, 'MOCK_MAJOR_0046', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0509002', '数字经济', 7, 'MOCK_MAJOR_0047', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0801007', '信息与计算科学', 10, 'MOCK_MAJOR_0048', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0802007', '统计学', 10, 'MOCK_MAJOR_0049', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0803308', '数据科学与大数据技术', 3, 'MOCK_MAJOR_0050', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0902003', '社会工作', 13, 'MOCK_MAJOR_0051', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('0907412', '行政管理', 13, 'MOCK_MAJOR_0052', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1401013', '广播电视编导', 14, 'MOCK_MAJOR_0053', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1405005', '广告学', 14, 'MOCK_MAJOR_0054', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1402008', '数字媒体技术', 14, 'MOCK_MAJOR_0055', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1403113', '数字媒体艺术', 15, 'MOCK_MAJOR_0056', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_major
(code, name, college_id, original_mock_id, is_mock, data_source)
VALUES
('1404005', '网络与新媒体', 14, 'MOCK_MAJOR_0057', 1, '7_11_import')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    college_id = VALUES(college_id),
    updated_time = CURRENT_TIMESTAMP;
COMMIT;
