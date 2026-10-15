SET NAMES utf8mb4;
START TRANSACTION;
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春一汽嘉信热处理科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0001'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0001'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春奥普光电技术股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0002'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0002'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省新铝涂装饰材料有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0003'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0003'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省红星轨道车辆装备有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0004'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0004'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'中盈志合吉林科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0005'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0005'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春富维安道拓汽车饰件系统有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0006'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0006'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'红旗繁荣工厂', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0007'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0007'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林盛大电缆有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0008'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0008'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长玉特陶新材料技术股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0009'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0009'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林建龙钢铁有限责任公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0010'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0010'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'天津钢管制造有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0011'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0011'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'卡斯马汽车系统(上海)有限公司长春公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0012'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0012'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'东睦富奥新材料有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0013'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0013'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'富奥股份公司散热器分公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0014'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0014'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'一汽红旗繁荣工厂', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0015'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0015'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春文教锅炉集团', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0016'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0016'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春城际轨道客车装备有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0017'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0017'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'弗吉亚排气（长春）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0018'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0018'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'一汽解放公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0019'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0019'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春工业大学公共管理学院、长春新区人民检察院校检合作人才培养实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0020'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0020'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'锦湖轮胎', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0021'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0021'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'路通轨道集团', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0022'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0022'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'派格汽车塑料技术有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0023'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0023'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'英海节能科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0024'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0024'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'三化实业有限责任公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0025'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0025'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'金启科技发展有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0026'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0026'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'一汽大众', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0027'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0027'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'伟巴斯特车顶系统有限', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0028'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0028'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'上海金力泰化工股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0029'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0029'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林工业职业技术学院', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0030'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0030'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省石油化工设计研究院', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0031'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0031'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省蓝浦浩业科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0032'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0032'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省国大生物工程有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0033'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0033'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市第一净水厂', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0034'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0034'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北郊污水处理厂', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0035'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0035'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春三合废弃电器电子产品回收处置有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0036'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0036'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省鑫祥有限责任公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0037'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0037'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省华航环境检测有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0038'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0038'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省西点药业科技发展股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0039'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0039'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省奇健生物技术有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0040'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0040'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省国药一心制药有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0041'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0041'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省质量监督检验院', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0042'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0042'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春天新合成材料有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0043'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0043'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省产品质量监督检验院', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0044'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0044'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉原生物科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0045'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0045'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春积德泉酿酒实业集团', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0046'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0046'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省金鹿药业有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0047'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0047'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春金荷药业有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0048'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0048'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省阿满食品有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0049'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0049'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'富生（吉林省）投资管理集团有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0050'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0050'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'一汽丰田发动机（长春）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0051'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0051'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春泰盟机械制造股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0052'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0052'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春派格汽车塑料技术公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0053'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0053'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春百事可乐饮料有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0054'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0054'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'湖北志锋科技服务有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0055'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0055'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省隆华测控股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0056'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0056'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春匠人创新创业孵化管理有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0057'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0057'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'小白智能科技（长春）股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0058'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0058'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长光卫星科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0059'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0059'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市迪瑞医疗科技股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0060'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0060'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春昕桐科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0061'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0061'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北京波尔通信技术股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0062'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0062'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'东软集团股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0063'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0063'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉软数科科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0064'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0064'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'亚信科技（中国）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0065'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0065'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'中科软科技股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0066'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0066'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'山东青科教育科技集团有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0067'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0067'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'​厦门市顿河教育科技有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0068'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0068'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'译国译民集团', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0069'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0069'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'益德穿梭科技（大连）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0070'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0070'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'卓联教育科技（大连）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0071'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0071'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'中语智汇科技（厦门）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0072'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0072'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市吉语翻译有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0073'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0073'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省大驰一晶文化传媒有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0074'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0074'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省合厚传媒有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0075'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0075'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林荣发服装服饰有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0076'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0076'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春圣威雅特服装集团有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0077'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0077'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省服装总公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0078'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0078'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'中邦汇泽园林环境建设有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0079'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0079'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省领域创意产业有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0080'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0080'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省维川建筑装饰工程有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0081'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0081'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省中鸿建筑工程设计有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0082'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0082'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省今和建筑装饰工程有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0083'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0083'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省新晟装饰设计工程有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0084'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0084'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市莱迪珂文化传播有限责任公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0085'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0085'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春艾爱未来文化发展有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0086'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0086'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春柏林机械装备有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0087'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0087'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省金佰汇测绘有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0088'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0088'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市布拉泽医疗科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0089'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0089'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'凯世曼铸造长春有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0090'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0090'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'中机试验装备股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0091'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0091'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'芜湖经济技术开发区', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0092'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0092'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春嘉诚信息技术股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0093'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0093'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'华信永道（北京）科技股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0094'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0094'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省群启汽车技术有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0095'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0095'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'数据加长春科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0096'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0096'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'上海筱伊网络科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0097'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0097'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'万控智造股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0098'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0098'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'默飓电气有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0099'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0099'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长光卫星技术股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0100'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0100'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省光电子产业孵化器有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0101'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0101'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春赛博集团股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0102'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0102'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北京时电科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0103'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0103'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'郑州安图生物工程股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0104'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0104'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'苏州汇川技术有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0105'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0105'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春供电公司西郊220kV变电站实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0106'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0106'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市合心变电所实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0107'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0107'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春三鼎变压器有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0108'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0108'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林瑞铭机电设备有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0109'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0109'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春关爱电子科技有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0110'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0110'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省恒立电力设计有限责任公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0111'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0111'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春信凯机械设备有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0112'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0112'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'沈阳华电电站实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0113'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0113'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市北方特种电线电缆制造有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0114'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0114'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市高新东卓汽车电子有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0115'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0115'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省博安消防设备有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0116'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0116'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省骏天电力工程设计有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0117'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0117'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省金冠电气股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0118'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0118'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省金冠电气股份 有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0119'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0119'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'电气与电子工程学院校内实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0120'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0120'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春工业大学自动化专业校外
实践教学基地-大陆汽车电子（长春）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0121'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0121'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'自动化卓越工程师联合培养基地-长春大正博凯汽车设备有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0122'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0122'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'校企合作实习实践就业基地-纬湃汽车电子(长春)有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0123'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0123'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'校企合作实习基地-蒂森克虏伯富奥汽车转向柱（长春）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0124'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0124'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'校企合作实习实践就业基地-吉林省恒创智能装备有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0125'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0125'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'校企合作实习实践就业基地-长春市吉达自动化系统有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0126'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0126'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'校企合作-迪瑞班-迪瑞医疗科技股份有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0127'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0127'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'校企合作-产学研合作基地-长春市吉达自动化系统有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0128'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0128'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'校企合作参观实践基地-中粮可口可乐饮料（吉林）有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0129'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0129'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'Credamo见数战略合作实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0130'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0130'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'合众人寿保险公司专业实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0131'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0131'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'东北证券公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0132'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0132'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林银行东盛大街支行专业实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0133'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0133'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'渤海期货公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0134'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0134'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'国泰君安公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0135'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0135'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北京东奥时代教育科技有限公司长春分公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0136'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0136'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省鸿兴建设集团有限公司实习基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0137'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0137'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春一汽国际物流有限公司创新创业实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0138'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0138'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省鸿兴建设集团有限公司创新创业实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0139'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0139'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省富生医疗器械有限公司创新创业实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0140'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0140'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省众驰医疗科技有限公司创新创业实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0141'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0141'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'蓝科医美科学技术（吉林）有限公司创新创业实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0142'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0142'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春启璞科技信息咨询有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0143'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0143'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省森祥科技有限公司
产学研合作基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0144'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0144'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'大连贝思信息技术有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0145'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0145'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北京康特瑞科统计科技有限责任公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0146'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0146'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市机器人学会', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0147'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0147'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春天成科技发展有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0148'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0148'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北京连星科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0149'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0149'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省森祥科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0150'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0150'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省裕林信息科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0151'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0151'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市万易科技有限公司', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0152'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0152'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林灜庆律师事务所', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0153'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0153'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林同信法大律师事务所', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0154'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0154'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市人民检察院', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0155'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0155'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林德勋律师事务所', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0156'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0156'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市二道区人民法院', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0157'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0157'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市新区人民检察院', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0158'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0158'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春新区人力资源和社会保障局', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0159'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0159'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北京炜衡（长春）律师事务所', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0160'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0160'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'广东卓建（长春）律师事务所', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0161'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0161'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林世茂律师事务所', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0162'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0162'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'北京天地君泰（长春）律师事务所', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0163'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0163'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市社会工作者协会', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0164'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0164'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市同盛社会工作服务中心', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0165'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0165'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市高新区北湖街道', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0166'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0166'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市绿园区迎宾街道', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0167'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0167'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市新区龙湖社区', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0168'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0168'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市新区北湾社区', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0169'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0169'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省中麒影视制作有限公司校企合作基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0170'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0170'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林智联力丰科技有限公司校企合作基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0171'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0171'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春盛世互联信息技术有限公司校企合作基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0172'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0172'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市声色文化传媒有限公司校企合作基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0173'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0173'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'小白智能科技（长春）股份有限公司校企合作基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0174'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0174'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春智信创联科技有限公司实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0175'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0175'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林中视元启数字科技有限公司实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0176'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0176'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'启迪（长春）科技园管理有限公司实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0177'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0177'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省知元科技有限公司实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0178'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0178'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'长春市满天星文化传媒有限公司实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0179'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0179'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省头马文化发展有限公司实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0180'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0180'
      AND data_source = '7_11_import'
);
INSERT INTO internship_enterprise
(name, credit_code, address, contact_name, contact_phone, is_mock, data_source, source_record_id)
SELECT
'吉林省邦源科技有限公司实践基地', NULL, NULL, NULL, NULL, 0, '7_11_import', 'MOCK_ENTERPRISE_0181'
WHERE NOT EXISTS (
    SELECT 1
    FROM internship_enterprise
    WHERE source_record_id = 'MOCK_ENTERPRISE_0181'
      AND data_source = '7_11_import'
);
COMMIT;
