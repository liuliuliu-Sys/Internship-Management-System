CREATE TABLE IF NOT EXISTS internship_base (
    id BIGINT NOT NULL AUTO_INCREMENT COMMENT '基地ID',
    name VARCHAR(255) NOT NULL COMMENT '基地名称',
    enterprise_id BIGINT DEFAULT NULL COMMENT '关联企业ID',
    college_id INT NOT NULL COMMENT '维护学院ID',
    location_type VARCHAR(16) NOT NULL COMMENT '校内或校外',
    address VARCHAR(500) DEFAULT NULL COMMENT '基地地点',
    established_year CHAR(4) DEFAULT NULL COMMENT '建立年份',
    original_mock_id VARCHAR(64) DEFAULT NULL COMMENT '原始关联编号',
    is_mock TINYINT(1) NOT NULL DEFAULT 0 COMMENT '内部测试数据标识',
    data_source VARCHAR(64) DEFAULT NULL COMMENT '内部数据来源',
    created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
    UNIQUE KEY uk_base_original_mock_id (original_mock_id),
    KEY idx_base_name (name),
    KEY idx_base_enterprise (enterprise_id),
    KEY idx_base_college (college_id),

    CONSTRAINT fk_internship_base_enterprise
        FOREIGN KEY (enterprise_id)
        REFERENCES internship_enterprise(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_internship_base_college
        FOREIGN KEY (college_id)
        REFERENCES sys_dept(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
COMMENT='产教融合基地信息表';


CREATE TABLE IF NOT EXISTS internship_base_major (
    id BIGINT NOT NULL AUTO_INCREMENT COMMENT '关联ID',
    base_id BIGINT NOT NULL COMMENT '基地ID',
    major_id BIGINT NOT NULL COMMENT '专业ID',
    is_entrepreneurship TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否创业基地',
    is_demonstration TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否示范基地',
    is_industry_cooperation TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否行业企业共建基地',
    annual_student_visits INT NOT NULL DEFAULT 0 COMMENT '学年接纳人次',
    source_record_id VARCHAR(100) DEFAULT NULL COMMENT '原始记录编号',

    PRIMARY KEY (id),
    UNIQUE KEY uk_base_major (base_id, major_id),
    KEY idx_base_major_major (major_id),

    CONSTRAINT fk_internship_base_major_base
        FOREIGN KEY (base_id)
        REFERENCES internship_base(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_internship_base_major_major
        FOREIGN KEY (major_id)
        REFERENCES internship_major(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
COMMENT='基地与面向专业关联表';
