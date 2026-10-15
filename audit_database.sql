SELECT
    TABLE_NAME AS table_name,
    TABLE_ROWS AS estimated_rows
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'fastapiadmin'
  AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
