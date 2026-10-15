CREATE TABLE IF NOT EXISTS internship_enterprise (
    id BIGINT NOT NULL AUTO_INCREMENT COMMENT '企业ID',
    name VARCHAR(255) NOT NULL COMMENT '企业名称',
    credit_code VARCHAR(32) DEFAULT NULL COMMENT '统一社会信用代码',
    address VARCHAR(500) DEFAULT NULL COMMENT '企业地址',
    contact_name VARCHAR(64) DEFAULT NULL COMMENT '联系人',
    contact_phone VARCHAR(32) DEFAULT NULL COMMENT '联系电话',
    is_mock TINYINT(1) NOT NULL DEFAULT 0 COMMENT '内部测试数据标识',
    data_source VARCHAR(64) DEFAULT NULL COMMENT '内部数据来源',
    source_record_id VARCHAR(100) DEFAULT NULL COMMENT '原始记录编号',
    created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    KEY idx_enterprise_name (name),
    KEY idx_enterprise_credit_code (credit_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='实习企业信息表';


CREATE TABLE IF NOT EXISTS internship_major (
    id BIGINT NOT NULL AUTO_INCREMENT COMMENT '专业ID',
    code VARCHAR(32) NOT NULL COMMENT '专业代码',
    name VARCHAR(128) NOT NULL COMMENT '专业名称',
    college_id INT NOT NULL COMMENT '所属学院ID',
    original_mock_id VARCHAR(64) DEFAULT NULL COMMENT '原始模拟专业关联编号',
    is_mock TINYINT(1) NOT NULL DEFAULT 0 COMMENT '内部测试数据标识',
    data_source VARCHAR(64) DEFAULT NULL COMMENT '内部数据来源',
    created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY uk_major_code (code),
    UNIQUE KEY uk_major_original_mock_id (original_mock_id),
    KEY idx_major_college (college_id),
    CONSTRAINT fk_internship_major_college
        FOREIGN KEY (college_id)
        REFERENCES sys_dept(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='实习专业信息表';
