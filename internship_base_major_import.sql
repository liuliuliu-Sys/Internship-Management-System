SET NAMES utf8mb4;
START TRANSACTION;
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    140,
    'BASE_7_11_0002'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0001'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0001'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    140,
    'BASE_7_11_0003'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0002'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0001'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    70,
    'BASE_7_11_0006'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0002'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0002'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    140,
    'BASE_7_11_0004'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0003'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0001'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    140,
    'BASE_7_11_0005'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0004'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0001'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    70,
    'BASE_7_11_0007'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0005'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0002'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    105,
    'BASE_7_11_0008'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0006'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0002'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    105,
    'BASE_7_11_0009'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0007'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0002'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    131,
    'BASE_7_11_0010'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0008'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    131,
    'BASE_7_11_0011'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0009'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    99,
    'BASE_7_11_0012'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0010'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    30,
    'BASE_7_11_0013'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0011'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    131,
    'BASE_7_11_0014'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0012'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    131,
    'BASE_7_11_0015'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0013'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    131,
    'BASE_7_11_0016'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0014'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    131,
    'BASE_7_11_0017'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0015'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    99,
    'BASE_7_11_0018'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0016'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    179,
    'BASE_7_11_0019'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0017'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    99,
    'BASE_7_11_0020'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0018'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    179,
    'BASE_7_11_0021'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0019'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0003'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    85,
    'BASE_7_11_0022'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0020'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    155,
    'BASE_7_11_0023'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0021'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0024'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0022'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    110,
    'BASE_7_11_0025'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0023'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    155,
    'BASE_7_11_0026'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0024'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0027'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0025'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    23,
    'BASE_7_11_0041'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0025'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0009'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0028'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0026'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    155,
    'BASE_7_11_0029'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0027'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0030'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0028'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0031'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0029'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0005'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    23,
    'BASE_7_11_0042'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0029'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0009'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    1,
    0,
    106,
    'BASE_7_11_0032'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0030'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0006'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    117,
    'BASE_7_11_0033'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0031'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0006'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    33,
    'BASE_7_11_0034'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0032'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0007'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    35,
    'BASE_7_11_0035'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0033'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0007'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    36,
    'BASE_7_11_0044'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0033'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0010'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    52,
    'BASE_7_11_0036'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0034'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0008'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    52,
    'BASE_7_11_0037'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0035'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0008'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    52,
    'BASE_7_11_0038'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0036'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0008'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    70,
    'BASE_7_11_0039'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0037'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0008'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    70,
    'BASE_7_11_0040'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0038'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0008'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    36,
    'BASE_7_11_0043'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0039'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0010'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    0,
    'BASE_7_11_0045'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0040'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0010'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    34,
    'BASE_7_11_0046'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0041'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0010'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    0,
    'BASE_7_11_0047'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0042'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0010'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    68,
    'BASE_7_11_0048'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0043'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0011'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    74,
    'BASE_7_11_0051'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0043'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0012'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    68,
    'BASE_7_11_0049'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0044'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0011'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    74,
    'BASE_7_11_0052'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0044'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0012'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    36,
    'BASE_7_11_0057'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0044'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0014'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    68,
    'BASE_7_11_0050'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0045'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0011'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    74,
    'BASE_7_11_0053'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0045'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0012'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    80,
    'BASE_7_11_0054'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0046'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0013'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    80,
    'BASE_7_11_0055'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0047'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0013'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    80,
    'BASE_7_11_0056'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0048'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0013'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    40,
    'BASE_7_11_0058'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0049'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0014'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    40,
    'BASE_7_11_0059'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0050'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0014'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    32,
    'BASE_7_11_0060'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0015'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    30,
    'BASE_7_11_0063'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0016'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    39,
    'BASE_7_11_0067'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0017'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    71,
    'BASE_7_11_0070'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0018'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    137,
    'BASE_7_11_0076'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0019'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    38,
    'BASE_7_11_0079'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0020'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    140,
    'BASE_7_11_0133'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0036'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    95,
    'BASE_7_11_0136'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0051'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0037'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    32,
    'BASE_7_11_0061'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0015'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    30,
    'BASE_7_11_0064'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0016'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    39,
    'BASE_7_11_0068'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0017'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    71,
    'BASE_7_11_0071'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0018'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    137,
    'BASE_7_11_0077'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0019'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    38,
    'BASE_7_11_0080'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0020'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    140,
    'BASE_7_11_0134'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0036'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    95,
    'BASE_7_11_0137'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0052'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0037'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    32,
    'BASE_7_11_0062'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0015'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    30,
    'BASE_7_11_0065'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0016'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    39,
    'BASE_7_11_0069'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0017'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    71,
    'BASE_7_11_0072'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0018'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    137,
    'BASE_7_11_0078'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0019'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    38,
    'BASE_7_11_0081'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0020'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    140,
    'BASE_7_11_0135'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0036'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    95,
    'BASE_7_11_0138'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0053'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0037'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    108,
    'BASE_7_11_0066'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0054'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0016'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    150,
    'BASE_7_11_0073'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0055'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0018'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    78,
    'BASE_7_11_0074'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0056'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0018'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    71,
    'BASE_7_11_0075'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0057'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0018'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    382,
    'BASE_7_11_0082'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0058'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0021'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    39,
    'BASE_7_11_0083'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0058'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0022'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    132,
    'BASE_7_11_0084'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0058'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0023'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    147,
    'BASE_7_11_0085'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0058'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0024'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    236,
    'BASE_7_11_0086'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0059'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0021'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    123,
    'BASE_7_11_0087'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0059'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0025'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    79,
    'BASE_7_11_0088'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0059'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0022'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    125,
    'BASE_7_11_0089'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0059'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0023'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    137,
    'BASE_7_11_0090'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0059'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0024'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0091'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0060'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0021'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    4,
    'BASE_7_11_0092'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0061'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0021'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    1,
    'BASE_7_11_0093'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0062'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0025'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    3,
    'BASE_7_11_0094'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0063'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0023'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0095'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0064'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0023'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    4,
    'BASE_7_11_0096'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0065'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0023'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    4,
    'BASE_7_11_0097'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0066'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0023'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0098'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0066'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0021'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0099'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0067'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0026'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0100'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0068'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0026'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    5,
    'BASE_7_11_0101'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0069'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0027'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    35,
    'BASE_7_11_0106'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0069'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0029'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    3,
    'BASE_7_11_0102'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0070'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0028'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    2,
    'BASE_7_11_0103'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0071'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0028'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    3,
    'BASE_7_11_0104'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0072'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0028'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    3,
    'BASE_7_11_0105'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0073'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0028'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    55,
    'BASE_7_11_0107'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0074'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0030'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    55,
    'BASE_7_11_0108'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0075'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0030'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    74,
    'BASE_7_11_0109'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0076'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0031'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    74,
    'BASE_7_11_0110'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0077'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0031'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    74,
    'BASE_7_11_0111'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0078'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0031'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    73,
    'BASE_7_11_0112'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0079'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0032'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    73,
    'BASE_7_11_0113'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0080'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0032'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    73,
    'BASE_7_11_0114'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0081'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0032'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    73,
    'BASE_7_11_0115'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0082'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0032'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    73,
    'BASE_7_11_0116'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0083'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0032'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    73,
    'BASE_7_11_0117'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0084'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0032'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    50,
    'BASE_7_11_0118'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0085'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0033'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    50,
    'BASE_7_11_0119'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0086'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0033'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0120'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0087'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0121'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0088'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0122'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0089'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    20,
    'BASE_7_11_0123'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0090'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    1,
    'BASE_7_11_0124'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0091'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    25,
    'BASE_7_11_0125'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0092'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    3,
    'BASE_7_11_0126'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0093'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    3,
    'BASE_7_11_0127'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0094'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    10,
    'BASE_7_11_0128'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0095'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    30,
    'BASE_7_11_0129'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0096'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0035'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    10,
    'BASE_7_11_0130'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0097'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0035'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0131'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0098'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    10,
    'BASE_7_11_0132'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0099'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0034'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    78,
    'BASE_7_11_0139'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0100'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0038'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    102,
    'BASE_7_11_0199'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0100'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0046'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    20,
    'BASE_7_11_0211'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0100'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0049'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    19,
    'BASE_7_11_0217'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0100'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0050'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    78,
    'BASE_7_11_0140'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0101'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0038'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    78,
    'BASE_7_11_0141'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0102'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0038'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    5,
    'BASE_7_11_0142'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0103'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0038'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    2,
    'BASE_7_11_0143'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0104'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0038'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    2,
    'BASE_7_11_0144'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0105'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0038'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    135,
    'BASE_7_11_0145'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0106'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    147,
    'BASE_7_11_0158'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0106'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    2,
    'BASE_7_11_0146'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0107'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    135,
    'BASE_7_11_0147'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0108'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    147,
    'BASE_7_11_0159'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0108'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    5,
    'BASE_7_11_0148'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0109'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    5,
    'BASE_7_11_0149'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0110'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    2,
    'BASE_7_11_0161'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0110'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    25,
    'BASE_7_11_0150'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0111'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    2,
    'BASE_7_11_0162'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0111'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    23,
    'BASE_7_11_0151'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0112'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    2,
    'BASE_7_11_0163'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0112'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    45,
    'BASE_7_11_0152'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0113'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    3,
    'BASE_7_11_0164'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0113'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    23,
    'BASE_7_11_0153'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0114'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    4,
    'BASE_7_11_0165'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0114'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    10,
    'BASE_7_11_0154'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0115'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    10,
    'BASE_7_11_0166'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0115'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    15,
    'BASE_7_11_0155'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0116'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    10,
    'BASE_7_11_0167'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0116'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    10,
    'BASE_7_11_0156'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0117'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    3,
    'BASE_7_11_0168'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0117'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    22,
    'BASE_7_11_0157'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0118'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0039'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    3,
    'BASE_7_11_0160'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0119'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    12,
    'BASE_7_11_0169'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0120'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    152,
    'BASE_7_11_0170'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0121'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0040'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    1,
    1,
    20,
    'BASE_7_11_0171'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0122'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0172'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0123'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    3,
    'BASE_7_11_0173'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0124'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0174'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0125'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0175'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0126'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    4,
    'BASE_7_11_0176'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0127'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0177'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0128'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0178'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0129'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    120,
    'BASE_7_11_0179'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0130'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0041'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    93,
    'BASE_7_11_0180'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0131'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0042'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0181'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0132'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0043'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0182'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0132'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0044'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0200'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0132'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0047'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    6,
    'BASE_7_11_0183'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0133'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0043'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    7,
    'BASE_7_11_0184'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0133'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0044'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0201'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0133'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0047'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    7,
    'BASE_7_11_0185'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0134'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0043'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    6,
    'BASE_7_11_0186'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0134'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0044'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0202'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0134'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0047'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    5,
    'BASE_7_11_0187'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0135'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0043'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    4,
    'BASE_7_11_0188'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0135'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0044'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0203'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0135'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0047'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    7,
    'BASE_7_11_0189'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0136'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0043'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    7,
    'BASE_7_11_0190'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0136'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0044'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    2,
    'BASE_7_11_0204'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0136'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0047'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    10,
    'BASE_7_11_0191'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0137'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0045'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    3,
    'BASE_7_11_0192'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0138'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0045'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    2,
    'BASE_7_11_0193'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0139'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0046'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    50,
    'BASE_7_11_0194'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0140'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0046'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    3,
    'BASE_7_11_0195'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0141'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0046'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    2,
    'BASE_7_11_0196'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0142'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0046'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    2,
    'BASE_7_11_0197'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0143'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0046'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    159,
    'BASE_7_11_0198'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0144'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0046'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    16,
    'BASE_7_11_0210'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0144'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0049'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    17,
    'BASE_7_11_0216'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0144'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0050'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    67,
    'BASE_7_11_0205'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0145'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0048'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    10,
    'BASE_7_11_0206'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0146'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0049'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    11,
    'BASE_7_11_0207'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0147'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0049'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    10,
    'BASE_7_11_0208'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0148'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0049'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    12,
    'BASE_7_11_0209'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0149'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0049'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    10,
    'BASE_7_11_0212'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0150'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0050'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    11,
    'BASE_7_11_0213'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0151'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0050'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    10,
    'BASE_7_11_0214'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0152'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0050'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    11,
    'BASE_7_11_0215'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0153'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0050'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    40,
    'BASE_7_11_0218'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0154'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    35,
    'BASE_7_11_0219'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0155'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    6,
    'BASE_7_11_0220'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0156'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    8,
    'BASE_7_11_0221'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0157'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    6,
    'BASE_7_11_0222'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0158'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    13,
    'BASE_7_11_0223'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0159'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    6,
    'BASE_7_11_0224'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0160'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    10,
    'BASE_7_11_0225'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0161'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    8,
    'BASE_7_11_0226'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0162'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    7,
    'BASE_7_11_0227'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0163'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    20,
    'BASE_7_11_0228'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0164'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0004'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    5,
    'BASE_7_11_0229'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0165'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0051'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    1,
    20,
    'BASE_7_11_0230'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0166'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0051'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    15,
    'BASE_7_11_0231'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0167'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0051'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    1,
    0,
    0,
    12,
    'BASE_7_11_0232'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0168'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0051'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    35,
    'BASE_7_11_0233'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0169'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0052'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    35,
    'BASE_7_11_0234'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0170'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0052'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    150,
    'BASE_7_11_0235'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0171'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0053'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    70,
    'BASE_7_11_0239'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0171'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0054'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    1,
    63,
    'BASE_7_11_0242'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0171'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0057'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    49,
    'BASE_7_11_0236'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0172'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0053'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    49,
    'BASE_7_11_0237'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0173'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0053'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    63,
    'BASE_7_11_0243'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0173'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0057'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    79,
    'BASE_7_11_0238'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0174'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0053'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    140,
    'BASE_7_11_0240'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0175'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0055'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    50,
    'BASE_7_11_0241'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0175'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0056'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    30,
    'BASE_7_11_0244'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0176'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0055'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    25,
    'BASE_7_11_0245'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0177'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0056'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    30,
    'BASE_7_11_0246'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0178'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0055'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    35,
    'BASE_7_11_0247'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0179'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0054'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    30,
    'BASE_7_11_0248'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0180'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0053'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    40,
    'BASE_7_11_0249'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0181'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0057'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
INSERT INTO internship_base_major
(
    base_id,
    major_id,
    is_entrepreneurship,
    is_demonstration,
    is_industry_cooperation,
    annual_student_visits,
    source_record_id
)
SELECT
    b.id,
    m.id,
    0,
    0,
    0,
    35,
    'BASE_7_11_0250'
FROM internship_base b
CROSS JOIN internship_major m
WHERE b.original_mock_id = 'MOCK_BASE_0182'
  AND b.data_source = '7_11_import'
  AND m.original_mock_id = 'MOCK_MAJOR_0055'
ON DUPLICATE KEY UPDATE
    is_entrepreneurship = VALUES(is_entrepreneurship),
    is_demonstration = VALUES(is_demonstration),
    is_industry_cooperation = VALUES(is_industry_cooperation),
    annual_student_visits = VALUES(annual_student_visits),
    source_record_id = VALUES(source_record_id);
COMMIT;
