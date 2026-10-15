SET NAMES utf8mb4;
START TRANSACTION;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春一汽嘉信热处理科技有限公司', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0001', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0001'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春奥普光电技术股份有限公司', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0002', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0002'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省新铝涂装饰材料有限公司', e.id, 6, '校外', NULL, '2024', 'MOCK_BASE_0003', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0003'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省红星轨道车辆装备有限公司', e.id, 6, '校外', NULL, '2024', 'MOCK_BASE_0004', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0004'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'中盈志合吉林科技有限公司', e.id, 6, '校外', NULL, '2015', 'MOCK_BASE_0005', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0005'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春富维安道拓汽车饰件系统有限公司', e.id, 6, '校外', NULL, '2001', 'MOCK_BASE_0006', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0006'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'红旗繁荣工厂', e.id, 6, '校外', NULL, '2021', 'MOCK_BASE_0007', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0007'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林盛大电缆有限公司', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0008', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0008'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长玉特陶新材料技术股份有限公司', e.id, 6, '校外', NULL, '2022', 'MOCK_BASE_0009', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0009'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林建龙钢铁有限责任公司', e.id, 6, '校外', NULL, '2022', 'MOCK_BASE_0010', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0010'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'天津钢管制造有限公司', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0011', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0011'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'卡斯马汽车系统(上海)有限公司长春公司', e.id, 6, '校外', NULL, '2024', 'MOCK_BASE_0012', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0012'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'东睦富奥新材料有限公司', e.id, 6, '校外', NULL, '2024', 'MOCK_BASE_0013', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0013'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'富奥股份公司散热器分公司', e.id, 6, '校外', NULL, '2018', 'MOCK_BASE_0014', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0014'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'一汽红旗繁荣工厂', e.id, 6, '校外', NULL, '2022', 'MOCK_BASE_0015', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0015'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春文教锅炉集团', e.id, 6, '校外', NULL, '2022', 'MOCK_BASE_0016', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0016'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春城际轨道客车装备有限公司', e.id, 6, '校外', NULL, '2022', 'MOCK_BASE_0017', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0017'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'弗吉亚排气（长春）有限公司', e.id, 6, '校外', NULL, '2022', 'MOCK_BASE_0018', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0018'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'一汽解放公司', e.id, 6, '校外', NULL, '2022', 'MOCK_BASE_0019', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0019'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春工业大学公共管理学院、长春新区人民检察院校检合作人才培养实践基地', e.id, 13, '校内', NULL, '2023', 'MOCK_BASE_0020', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0020'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'锦湖轮胎', e.id, 6, '校外', NULL, '2024', 'MOCK_BASE_0021', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0021'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'路通轨道集团', e.id, 6, '校外', NULL, '2018', 'MOCK_BASE_0022', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0022'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'派格汽车塑料技术有限公司', e.id, 6, '校外', NULL, '2015', 'MOCK_BASE_0023', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0023'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'英海节能科技有限公司', e.id, 6, '校外', NULL, '2024', 'MOCK_BASE_0024', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0024'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'三化实业有限责任公司', e.id, 6, '校外', NULL, '2020', 'MOCK_BASE_0025', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0025'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'金启科技发展有限公司', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0026', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0026'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'一汽大众', e.id, 6, '校外', NULL, '2024', 'MOCK_BASE_0027', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0027'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'伟巴斯特车顶系统有限', e.id, 6, '校外', NULL, '2020', 'MOCK_BASE_0028', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0028'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'上海金力泰化工股份有限公司', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0029', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0029'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林工业职业技术学院', e.id, 9, '校外', NULL, '2016', 'MOCK_BASE_0030', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0030'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省石油化工设计研究院', e.id, 9, '校外', NULL, '2019', 'MOCK_BASE_0031', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0031'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省蓝浦浩业科技有限公司', e.id, 9, '校外', NULL, '2023', 'MOCK_BASE_0032', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0032'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省国大生物工程有限公司', e.id, 9, '校外', NULL, '2023', 'MOCK_BASE_0033', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0033'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市第一净水厂', e.id, 9, '校外', NULL, '2020', 'MOCK_BASE_0034', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0034'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北郊污水处理厂', e.id, 9, '校外', NULL, '2020', 'MOCK_BASE_0035', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0035'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春三合废弃电器电子产品回收处置有限公司', e.id, 9, '校外', NULL, '2024', 'MOCK_BASE_0036', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0036'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省鑫祥有限责任公司', e.id, 9, '校外', NULL, '2024', 'MOCK_BASE_0037', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0037'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省华航环境检测有限公司', e.id, 9, '校外', NULL, '2023', 'MOCK_BASE_0038', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0038'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省西点药业科技发展股份有限公司', e.id, 9, '校外', NULL, '2023', 'MOCK_BASE_0039', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0039'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省奇健生物技术有限公司', e.id, 9, '校外', NULL, '2025', 'MOCK_BASE_0040', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0040'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省国药一心制药有限公司', e.id, 9, '校外', NULL, '2020', 'MOCK_BASE_0041', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0041'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省质量监督检验院', e.id, 9, '校外', NULL, '2025', 'MOCK_BASE_0042', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0042'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春天新合成材料有限公司', e.id, 6, '校外', NULL, '2025', 'MOCK_BASE_0043', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0043'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省产品质量监督检验院', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0044', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0044'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉原生物科技有限公司', e.id, 6, '校外', NULL, '2023', 'MOCK_BASE_0045', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0045'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春积德泉酿酒实业集团', e.id, 11, '校外', NULL, '2021', 'MOCK_BASE_0046', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0046'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省金鹿药业有限公司', e.id, 11, '校外', NULL, '2018', 'MOCK_BASE_0047', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0047'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春金荷药业有限公司', e.id, 11, '校外', NULL, '2023', 'MOCK_BASE_0048', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0048'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省阿满食品有限公司', e.id, 11, '校外', NULL, '2023', 'MOCK_BASE_0049', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0049'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'富生（吉林省）投资管理集团有限公司', e.id, 11, '校外', NULL, '2023', 'MOCK_BASE_0050', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0050'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'一汽丰田发动机（长春）有限公司', e.id, 4, '校外', NULL, '2011', 'MOCK_BASE_0051', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0051'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春泰盟机械制造股份有限公司', e.id, 4, '校外', NULL, '2024', 'MOCK_BASE_0052', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0052'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春派格汽车塑料技术公司', e.id, 4, '校外', NULL, '2024', 'MOCK_BASE_0053', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0053'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春百事可乐饮料有限公司实习基地', e.id, 2, '校外', NULL, '2025', 'MOCK_BASE_0054', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0054'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'湖北志锋科技服务有限公司', e.id, 2, '校外', NULL, '2024', 'MOCK_BASE_0055', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0055'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省隆华测控股份有限公司', e.id, 2, '校外', NULL, '2024', 'MOCK_BASE_0056', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0056'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春匠人创新创业孵化管理有限公司', e.id, 2, '校外', NULL, '2024', 'MOCK_BASE_0057', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0057'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'小白智能科技（长春）股份有限公司', e.id, 3, '校外', NULL, '2022', 'MOCK_BASE_0058', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0058'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长光卫星科技有限公司', e.id, 3, '校外', NULL, '2021', 'MOCK_BASE_0059', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0059'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市迪瑞医疗科技股份有限公司', e.id, 3, '校外', NULL, '2021', 'MOCK_BASE_0060', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0060'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春昕桐科技有限公司', e.id, 3, '校外', NULL, '2023', 'MOCK_BASE_0061', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0061'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北京波尔通信技术股份有限公司', e.id, 5, '校外', NULL, '2021', 'MOCK_BASE_0062', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0062'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'东软集团股份有限公司', e.id, 3, '校外', NULL, '2021', 'MOCK_BASE_0063', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0063'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉软数科科技有限公司', e.id, 3, '校外', NULL, '2021', 'MOCK_BASE_0064', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0064'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'亚信科技（中国）有限公司', e.id, 3, '校外', NULL, '2012', 'MOCK_BASE_0065', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0065'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'中科软科技股份有限公司', e.id, 3, '校外', NULL, '2022', 'MOCK_BASE_0066', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0066'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'山东青科教育科技集团有限公司实习基地', e.id, 8, '校外', NULL, '2024', 'MOCK_BASE_0067', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0067'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'​厦门市顿河教育科技有限公司实习基地', e.id, 8, '校外', NULL, '2024', 'MOCK_BASE_0068', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0068'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'译国译民集团', e.id, 8, '校外', NULL, '2023', 'MOCK_BASE_0069', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0069'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'益德穿梭科技（大连）有限公司', e.id, 8, '校外', NULL, '2020', 'MOCK_BASE_0070', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0070'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'卓联教育科技（大连）有限公司', e.id, 8, '校外', NULL, '2021', 'MOCK_BASE_0071', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0071'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'中语智汇科技（厦门）有限公司', e.id, 8, '校外', NULL, '2022', 'MOCK_BASE_0072', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0072'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市吉语翻译有限公司', e.id, 8, '校外', NULL, '2023', 'MOCK_BASE_0073', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0073'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省大驰一晶文化传媒有限公司', e.id, 15, '校外', NULL, '2024', 'MOCK_BASE_0074', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0074'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省合厚传媒有限公司', e.id, 15, '校外', NULL, '2021', 'MOCK_BASE_0075', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0075'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林荣发服装服饰有限公司实习基地', e.id, 15, '校外', NULL, '2023', 'MOCK_BASE_0076', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0076'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春圣威雅特服装集团有限公司实习基地', e.id, 15, '校外', NULL, '2018', 'MOCK_BASE_0077', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0077'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省服装总公司实习基地', e.id, 15, '校外', NULL, '2023', 'MOCK_BASE_0078', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0078'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'中邦汇泽园林环境建设有限公司', e.id, 15, '校外', NULL, '2021', 'MOCK_BASE_0079', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0079'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省领域创意产业有限公司', e.id, 15, '校外', NULL, '2021', 'MOCK_BASE_0080', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0080'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省维川建筑装饰工程有限公司', e.id, 15, '校外', NULL, '2024', 'MOCK_BASE_0081', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0081'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省中鸿建筑工程设计有限公司', e.id, 15, '校外', NULL, '2024', 'MOCK_BASE_0082', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0082'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省今和建筑装饰工程有限公司', e.id, 15, '校外', NULL, '2023', 'MOCK_BASE_0083', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0083'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省新晟装饰设计工程有限公司', e.id, 15, '校外', NULL, '2023', 'MOCK_BASE_0084', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0084'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市莱迪珂文化传播有限责任公司', e.id, 15, '校外', NULL, '2022', 'MOCK_BASE_0085', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0085'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春艾爱未来文化发展有限公司', e.id, 15, '校外', NULL, '2016', 'MOCK_BASE_0086', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0086'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春柏林机械装备有限公司', e.id, 2, '校外', NULL, '2021', 'MOCK_BASE_0087', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0087'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省金佰汇测绘有限公司', e.id, 2, '校外', NULL, '2020', 'MOCK_BASE_0088', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0088'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市布拉泽医疗科技有限公司', e.id, 2, '校外', NULL, '2020', 'MOCK_BASE_0089', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0089'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'凯世曼铸造长春有限公司', e.id, 2, '校外', NULL, '2020', 'MOCK_BASE_0090', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0090'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'中机试验装备股份有限公司', e.id, 2, '校外', NULL, '2020', 'MOCK_BASE_0091', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0091'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'芜湖经济技术开发区', e.id, 2, '校外', NULL, '2019', 'MOCK_BASE_0092', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0092'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春嘉诚信息技术股份有限公司', e.id, 2, '校外', NULL, '2020', 'MOCK_BASE_0093', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0093'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'华信永道（北京）科技股份有限公司', e.id, 2, '校外', NULL, '2018', 'MOCK_BASE_0094', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0094'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省群启汽车技术有限公司', e.id, 2, '校外', NULL, '2024', 'MOCK_BASE_0095', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0095'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'数据加长春科技有限公司', e.id, 3, '校外', NULL, '2023', 'MOCK_BASE_0096', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0096'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'上海筱伊网络科技有限公司', e.id, 3, '校外', NULL, '2014', 'MOCK_BASE_0097', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0097'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'万控智造股份有限公司', e.id, 2, '校外', NULL, '2025', 'MOCK_BASE_0098', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0098'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'默飓电气有限公司', e.id, 2, '校外', NULL, '2025', 'MOCK_BASE_0099', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0099'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长光卫星技术股份有限公司', e.id, 5, '校外', NULL, '2016', 'MOCK_BASE_0100', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0100'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省光电子产业孵化器有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0101', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0101'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春赛博集团股份有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0102', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0102'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北京时电科技有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0103', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0103'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'郑州安图生物工程股份有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0104', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0104'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'苏州汇川技术有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0105', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0105'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春供电公司西郊220kV变电站实习基地', e.id, 5, '校外', NULL, '2010', 'MOCK_BASE_0106', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0106'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市合心变电所实习基地', e.id, 5, '校外', NULL, '2010', 'MOCK_BASE_0107', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0107'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春三鼎变压器有限公司实习基地', e.id, 5, '校外', NULL, '2015', 'MOCK_BASE_0108', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0108'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林瑞铭机电设备有限公司实习基地', e.id, 5, '校内', NULL, '2017', 'MOCK_BASE_0109', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0109'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春关爱电子科技有限公司实习基地', e.id, 5, '校外', NULL, '2018', 'MOCK_BASE_0110', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0110'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省恒立电力设计有限责任公司实习基地', e.id, 5, '校外', NULL, '2013', 'MOCK_BASE_0111', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0111'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春信凯机械设备有限公司实习基地', e.id, 5, '校外', NULL, '2014', 'MOCK_BASE_0112', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0112'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'沈阳华电电站实习基地', e.id, 5, '校外', NULL, '2015', 'MOCK_BASE_0113', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0113'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市北方特种电线电缆制造有限公司实习基地', e.id, 5, '校外', NULL, '2019', 'MOCK_BASE_0114', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0114'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市高新东卓汽车电子有限公司', e.id, 5, '校外', NULL, '2019', 'MOCK_BASE_0115', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0115'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省博安消防设备有限公司', e.id, 5, '校外', NULL, '2020', 'MOCK_BASE_0116', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0116'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省骏天电力工程设计有限公司实习基地', e.id, 5, '校外', NULL, '2020', 'MOCK_BASE_0117', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0117'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省金冠电气股份有限公司', e.id, 5, '校外', NULL, '2019', 'MOCK_BASE_0118', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0118'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林瑞铭机电设备有限公司实习基地', e.id, 17, '校外', NULL, '2017', 'MOCK_BASE_0119', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0109'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省金冠电气股份 有限公司', e.id, 17, '校外', NULL, '2019', 'MOCK_BASE_0120', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0119'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'电气与电子工程学院校内实习基地', e.id, 17, '校内', NULL, '2010', 'MOCK_BASE_0121', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0120'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春工业大学自动化专业校外
实践教学基地-大陆汽车电子（长春）有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0122', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0121'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'自动化卓越工程师联合培养基地-长春大正博凯汽车设备有限公司', e.id, 5, '校外', NULL, '2021', 'MOCK_BASE_0123', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0122'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'校企合作实习实践就业基地-纬湃汽车电子(长春)有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0124', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0123'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'校企合作实习基地-蒂森克虏伯富奥汽车转向柱（长春）有限公司', e.id, 5, '校外', NULL, '2024', 'MOCK_BASE_0125', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0124'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'校企合作实习实践就业基地-吉林省恒创智能装备有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0126', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0125'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'校企合作实习实践就业基地-长春市吉达自动化系统有限公司', e.id, 5, '校外', NULL, '2024', 'MOCK_BASE_0127', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0126'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'校企合作-迪瑞班-迪瑞医疗科技股份有限公司', e.id, 5, '校外', NULL, '2021', 'MOCK_BASE_0128', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0127'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'校企合作-产学研合作基地-长春市吉达自动化系统有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0129', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0128'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'校企合作参观实践基地-中粮可口可乐饮料（吉林）有限公司', e.id, 5, '校外', NULL, '2023', 'MOCK_BASE_0130', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0129'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'Credamo见数战略合作实践基地', e.id, 7, '校外', NULL, '2025', 'MOCK_BASE_0131', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0130'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'合众人寿保险公司专业实践基地', e.id, 7, '校外', NULL, '2019', 'MOCK_BASE_0132', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0131'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'东北证券公司实习基地', e.id, 7, '校外', NULL, '2019', 'MOCK_BASE_0133', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0132'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林银行东盛大街支行专业实践基地', e.id, 7, '校外', NULL, '2019', 'MOCK_BASE_0134', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0133'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'渤海期货公司实习基地', e.id, 7, '校外', NULL, '2019', 'MOCK_BASE_0135', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0134'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'国泰君安公司实习基地', e.id, 7, '校外', NULL, '2019', 'MOCK_BASE_0136', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0135'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北京东奥时代教育科技有限公司长春分公司', e.id, 7, '校外', NULL, '2015', 'MOCK_BASE_0137', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0136'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省鸿兴建设集团有限公司实习基地', e.id, 7, '校外', NULL, '2018', 'MOCK_BASE_0138', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0137'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春一汽国际物流有限公司创新创业实践基地', e.id, NULL, '校外', NULL, '2024', 'MOCK_BASE_0139', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0138'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省鸿兴建设集团有限公司创新创业实践基地', e.id, NULL, '校外', NULL, '2024', 'MOCK_BASE_0140', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0139'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省富生医疗器械有限公司创新创业实践基地', e.id, NULL, '校外', NULL, '2024', 'MOCK_BASE_0141', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0140'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省众驰医疗科技有限公司创新创业实践基地', e.id, NULL, '校外', NULL, '2024', 'MOCK_BASE_0142', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0141'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'蓝科医美科学技术（吉林）有限公司创新创业实践基地', e.id, NULL, '校外', NULL, '2024', 'MOCK_BASE_0143', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0142'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春启璞科技信息咨询有限公司', e.id, 10, '校外', NULL, '2024', 'MOCK_BASE_0144', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0143'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省森祥科技有限公司
产学研合作基地', e.id, 10, '校外', NULL, '2021', 'MOCK_BASE_0145', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0144'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'大连贝思信息技术有限公司', e.id, 10, '校外', NULL, '2017', 'MOCK_BASE_0146', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0145'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北京康特瑞科统计科技有限责任公司', e.id, 10, '校外', NULL, '2018', 'MOCK_BASE_0147', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0146'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市机器人学会', e.id, 10, '校外', NULL, '2019', 'MOCK_BASE_0148', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0147'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春天成科技发展有限公司', e.id, 10, '校外', NULL, '2021', 'MOCK_BASE_0149', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0148'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北京连星科技有限公司', e.id, 3, '校外', NULL, '2019', 'MOCK_BASE_0150', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0149'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省森祥科技有限公司', e.id, 3, '校外', NULL, '2021', 'MOCK_BASE_0151', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0150'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省裕林信息科技有限公司', e.id, 3, '校外', NULL, '2021', 'MOCK_BASE_0152', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0151'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市万易科技有限公司', e.id, 3, '校外', NULL, '2021', 'MOCK_BASE_0153', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0152'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林灜庆律师事务所', e.id, 13, '校内', NULL, '2019', 'MOCK_BASE_0154', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0153'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林同信法大律师事务所', e.id, 13, '校内', NULL, '2023', 'MOCK_BASE_0155', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0154'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市人民检察院', e.id, 13, '校外', NULL, '2003', 'MOCK_BASE_0156', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0155'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林德勋律师事务所', e.id, 13, '校外', NULL, '2019', 'MOCK_BASE_0157', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0156'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市二道区人民法院', e.id, 13, '校外', NULL, '2019', 'MOCK_BASE_0158', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0157'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市新区人民检察院', e.id, 13, '校外', NULL, '2023', 'MOCK_BASE_0159', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0158'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春新区人力资源和社会保障局', e.id, 13, '校外', NULL, '2023', 'MOCK_BASE_0160', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0159'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北京炜衡（长春）律师事务所', e.id, 13, '校外', NULL, '2023', 'MOCK_BASE_0161', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0160'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'广东卓建（长春）律师事务所', e.id, 13, '校外', NULL, '2023', 'MOCK_BASE_0162', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0161'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林世茂律师事务所', e.id, 13, '校外', NULL, '2024', 'MOCK_BASE_0163', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0162'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'北京天地君泰（长春）律师事务所', e.id, 13, '校外', NULL, '2024', 'MOCK_BASE_0164', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0163'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市社会工作者协会', e.id, 13, '校外', NULL, '2017', 'MOCK_BASE_0165', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0164'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市同盛社会工作服务中心', e.id, 13, '校外', NULL, '2015', 'MOCK_BASE_0166', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0165'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市高新区北湖街道', e.id, 13, '校外', NULL, '2023', 'MOCK_BASE_0167', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0166'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市绿园区迎宾街道', e.id, 13, '校外', NULL, '2024', 'MOCK_BASE_0168', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0167'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市新区龙湖社区', e.id, 13, '校外', NULL, '2023', 'MOCK_BASE_0169', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0168'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市新区北湾社区', e.id, 13, '校外', NULL, '2023', 'MOCK_BASE_0170', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0169'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省中麒影视制作有限公司校企合作基地', e.id, 14, '校外', NULL, '2002', 'MOCK_BASE_0171', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0170'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林智联力丰科技有限公司校企合作基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0172', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0171'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春盛世互联信息技术有限公司校企合作基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0173', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0172'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市声色文化传媒有限公司校企合作基地', e.id, 14, '校外', NULL, '2012', 'MOCK_BASE_0174', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0173'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'小白智能科技（长春）股份有限公司校企合作基地', e.id, 14, '校外', NULL, '2023', 'MOCK_BASE_0175', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0174'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春智信创联科技有限公司实践基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0176', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0175'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林中视元启数字科技有限公司实践基地', e.id, 15, '校外', NULL, '2025', 'MOCK_BASE_0177', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0176'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'启迪（长春）科技园管理有限公司实践基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0178', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0177'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省知元科技有限公司实践基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0179', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0178'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'长春市满天星文化传媒有限公司实践基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0180', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0179'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省头马文化发展有限公司实践基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0181', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0180'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
INSERT INTO internship_base
(name, enterprise_id, college_id, location_type, address, established_year, original_mock_id, is_mock, data_source)
SELECT
'吉林省邦源科技有限公司实践基地', e.id, 14, '校外', NULL, '2025', 'MOCK_BASE_0182', 0, '7_11_import'
FROM internship_enterprise e
WHERE e.source_record_id = 'MOCK_ENTERPRISE_0181'
AND e.data_source = '7_11_import'
ON DUPLICATE KEY UPDATE
name = VALUES(name),
enterprise_id = VALUES(enterprise_id),
college_id = VALUES(college_id),
location_type = VALUES(location_type),
established_year = VALUES(established_year),
updated_time = CURRENT_TIMESTAMP;
COMMIT;
