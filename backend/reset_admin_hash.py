from getpass import getpass
from app.utils.password_util import PwdUtil

password = getpass("请输入新的 admin 登录密码：")
confirm = getpass("请再次输入新密码：")

if not password or password != confirm:
    raise SystemExit("密码为空或两次输入不一致，已取消。")

if len(password) < 12:
    raise SystemExit("密码至少需要 12 个字符，已取消。")

print("\nPASSWORD_HASH=" + PwdUtil.hash_password(password))
