
import secrets
import string
import sys
from pathlib import Path

# 使用 FastApiAdmin 原有的密码工具
from app.utils.password_util import PwdUtil

BASE_DIR = Path(__file__).resolve().parent
SQL_FILE = BASE_DIR / "init_school_users.sql"

# 账号、显示名称、部门编码、角色编码
USERS = [
    ("academic01", "教务处测试人员", "ACADEMIC_AFFAIRS", "academic_affairs"),
    ("secretary_cs", "学院书记测试人员", "COLLEGE_CS", "party_secretary"),
    ("dean_cs", "学院院长测试人员", "COLLEGE_CS", "dean"),
    ("deputy_cs", "学院副书记测试人员", "COLLEGE_CS", "deputy_secretary"),
    ("vice_dean_cs", "教学副院长测试人员", "COLLEGE_CS", "vice_dean_teaching"),
    ("teaching_sec_cs", "教学秘书测试人员", "COLLEGE_CS", "teaching_secretary"),
    ("teacher_cs01", "学院教师测试人员", "COLLEGE_CS", "teacher"),
]

def generate_password(length=16):
    alphabet = string.ascii_letters + string.digits + "!@#$%^&*"
    while True:
        password = "".join(secrets.choice(alphabet) for _ in range(length))
        if (
            any(c.islower() for c in password)
            and any(c.isupper() for c in password)
            and any(c.isdigit() for c in password)
            and any(c in "!@#$%^&*" for c in password)
        ):
            return password

def quote(value):
    # 当前生成内容仅使用预定义账号、角色编码和随机密码哈希
    return "'" + value.replace("'", "''") + "'"

def main():
    if SQL_FILE.exists():
        print(f"SQL 文件已存在，未覆盖：{SQL_FILE}")
        print("如已执行过初始化，请先查询数据库，不要重新生成密码。")
        sys.exit(1)

    statements = [
        "SET NAMES utf8mb4;",
        "START TRANSACTION;",
    ]

    credentials = []

    for username, name, dept_code, role_code in USERS:
        password = generate_password()
        password_hash = PwdUtil.hash_password(password)

        username_sql = quote(username)
        name_sql = quote(name)
        hash_sql = quote(password_hash)
        dept_sql = quote(dept_code)
        role_sql = quote(role_code)

        # 使用实际部门编码和角色编码查找 ID，不依赖固定 ID
        statements.append(f"""
INSERT INTO sys_user
(
    username, password, name, is_superuser, status,
    description, dept_id, uuid, is_deleted,
    created_time, updated_time
)
SELECT
    {username_sql},
    {hash_sql},
    {name_sql},
    0,
    0,
    '学校实习管理系统测试账号',
    d.id,
    UUID(),
    0,
    NOW(),
    NOW()
FROM sys_dept AS d
WHERE d.code = {dept_sql}
  AND d.status = 0
  AND d.is_deleted = 0
  AND NOT EXISTS (
      SELECT 1 FROM sys_user AS u
      WHERE u.username = {username_sql}
  );

INSERT INTO sys_user_roles (user_id, role_id)
SELECT u.id, r.id
FROM sys_user AS u
JOIN sys_role AS r ON r.code = {role_sql}
WHERE u.username = {username_sql}
  AND u.is_deleted = 0
  AND r.status = 0
  AND NOT EXISTS (
      SELECT 1 FROM sys_user_roles AS ur
      WHERE ur.user_id = u.id AND ur.role_id = r.id
  );
""")
        credentials.append((username, password))

    statements.extend([
        "COMMIT;",
        """
SELECT
    u.id, u.username, u.name,
    d.name AS department,
    r.name AS role_name
FROM sys_user AS u
JOIN sys_dept AS d ON d.id = u.dept_id
JOIN sys_user_roles AS ur ON ur.user_id = u.id
JOIN sys_role AS r ON r.id = ur.role_id
WHERE u.username IN (
    'academic01', 'secretary_cs', 'dean_cs',
    'deputy_cs', 'vice_dean_cs',
    'teaching_sec_cs', 'teacher_cs01'
)
ORDER BY u.id;
""",
    ])

    SQL_FILE.write_text("\n".join(statements), encoding="utf-8")

    print("\nSQL 文件已生成：", SQL_FILE)
    print("\n以下密码只在本次生成时显示，请妥善保存：")
    print("-" * 54)

    for username, password in credentials:
        print(f"{username:<20} {password}")

    print("-" * 54)
    print("注意：只有数据库中新建的账号才使用以上初始密码。")
    print("如果数据库中已有同名账号，脚本不会重置其密码。")
    print("请勿将生成的 SQL 文件提交到 Git。")

if __name__ == "__main__":
    main()
