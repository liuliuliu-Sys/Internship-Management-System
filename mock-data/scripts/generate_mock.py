from pathlib import Path
from collections import defaultdict, Counter
from datetime import date, timedelta
import json
import random

random.seed(42)

ROOT = Path(__file__).resolve().parent.parent
REF = ROOT / "generated" / "reference"
OUT = ROOT / "generated" / "mock"
OUT.mkdir(parents=True, exist_ok=True)

def read(name):
    return json.loads((REF / name).read_text(encoding="utf-8"))

def save(name, records):
    (OUT / name).write_text(
        json.dumps(records, ensure_ascii=False, indent=2),
        encoding="utf-8"
    )
    print(f"[OK] {name}: {len(records)}")

def mid(prefix, number):
    return f"MOCK_{prefix}_{number:04d}"

source_bases = read("bases_7_11.json")
source_majors = read("majors_reference.json")
regions = read("region_codes.json")

# 使用现有数据库中的学院ID；不修改部门表
colleges = [
    {"id": i, "code": f"COLLEGE_{i:02d}"}
    for i in range(2, 18)
]

# 专业：保留来源代码，另建Mock内部ID
majors = []
major_lookup = {}

for i, item in enumerate(source_majors, 1):
    record = {
        "id": mid("MAJOR", i),
        "source_major_code": item["source_major_code"],
        "name": item["major_name"],
        "college_id": colleges[(i-1) % len(colleges)]["id"],
        "code_verified": False,
        "is_mock": True,
        "source_reference": item["source_file"]
    }
    majors.append(record)
    major_lookup[
        (item["source_major_code"], item["major_name"])
    ] = record["id"]

save("majors.json", majors)

# 企业：按原始基地名称合并，缺失的信用代码不伪造为真实代码
enterprises = []
enterprise_lookup = {}

for item in source_bases:
    name = item["base_name"].strip()

    if name not in enterprise_lookup:
        eid = mid("ENTERPRISE", len(enterprises)+1)
        enterprise_lookup[name] = eid

        enterprises.append({
            "id": eid,
            "name": name,
            "credit_code": None,
            "address": None,
            "contact_name": None,
            "contact_phone": None,
            "verification_status": "pending",
            "source_reference": "7-11",
            "is_mock": False
        })

save("enterprises.json", enterprises)

# 基地：合并相同名称和地点的记录，保留原始来源行
bases = []
base_lookup = {}

for item in source_bases:
    key = (item["base_name"], item["location_type"])

    if key not in base_lookup:
        bid = mid("BASE", len(bases)+1)
        base_lookup[key] = len(bases)

        bases.append({
            "id": bid,
            "enterprise_id": enterprise_lookup[item["base_name"]],
            "name": item["base_name"],
            "location_type": item["location_type"],
            "established_year": item["established_year"],
            "major_ids": [],
            "source_record_ids": [],
            "source_attributes": [],
            "is_mock": False
        })

    base = bases[base_lookup[key]]

    major_id = major_lookup.get(
        (item["major_code"], item["major_name"])
    )

    if major_id and major_id not in base["major_ids"]:
        base["major_ids"].append(major_id)

    base["source_record_ids"].append(item["source_id"])
    base["source_attributes"].append({
        "source_id": item["source_id"],
        "major_id": major_id,
        "is_entrepreneurship": item["is_entrepreneurship"],
        "is_demonstration": item["is_demonstration"],
        "is_industry_cooperation": item["is_industry_cooperation"],
        "annual_student_visits": item["annual_student_visits"]
    })

save("bases.json", bases)

# 自然班
natural_classes = []

for i in range(16):
    college = colleges[i]
    major = majors[i % len(majors)]

    natural_classes.append({
        "id": mid("NCLASS", i+1),
        "name": f"演示自然班{i+1:02d}",
        "college_id": college["id"],
        "major_id": major["id"],
        "enrollment_year": 2023,
        "is_mock": True
    })

save("natural_classes.json", natural_classes)

# 学生：全部使用虚构身份，不读取7-12真实学号及姓名
students = []

for i in range(320):
    cls = natural_classes[i // 20]

    students.append({
        "id": mid("STUDENT", i+1),
        "student_no": f"MOCK2023{i+1:04d}",
        "name": f"模拟学生{i+1:03d}",
        "college_id": cls["college_id"],
        "major_id": cls["major_id"],
        "natural_class_id": cls["id"],
        "enrollment_year": 2023,
        "is_mock": True
    })

save("students.json", students)

# 教师
teachers = []

for i in range(40):
    teachers.append({
        "id": mid("TEACHER", i+1),
        "name": f"模拟教师{i+1:03d}",
        "college_id": colleges[i % 16]["id"],
        "specialty": majors[i % len(majors)]["name"],
        "is_mock": True
    })

save("teachers.json", teachers)

# 教学班：学生允许从自然班选取部分成员组成教学班
teaching_classes = []

for i in range(20):
    cls = natural_classes[i % len(natural_classes)]
    eligible = [
        s for s in students
        if s["college_id"] == cls["college_id"]
    ]
    selected = random.sample(eligible, min(12, len(eligible)))

    teacher_candidates = [
        t for t in teachers
        if t["college_id"] == cls["college_id"]
    ]

    teaching_classes.append({
        "id": mid("TCLASS", i+1),
        "name": f"模拟实习教学班{i+1:02d}",
        "college_id": cls["college_id"],
        "major_id": cls["major_id"],
        "course_name": f"专业实习演示课程{i+1:02d}",
        "course_code": mid("COURSE", i+1),
        "student_ids": [s["id"] for s in selected],
        "teacher_ids": [
            t["id"] for t in teacher_candidates[:2]
        ],
        "status": "created",
        "is_mock": True
    })

save("teaching_classes.json", teaching_classes)

# 各学院合作协议
agreements = []
agreement_states = ["valid", "expiring", "expired", "pending_review"]

for i in range(35):
    enterprise = enterprises[i % len(enterprises)]
    college = colleges[i % len(colleges)]

    agreements.append({
        "id": mid("AGREEMENT", i+1),
        "enterprise_id": enterprise["id"],
        "college_id": college["id"],
        "agreement_no": mid("AGRNO", i+1),
        "start_date": "2026-01-01",
        "end_date": "2027-12-31",
        "demo_status": agreement_states[i % 4],
        "attachment": None,
        "is_mock": True
    })

save("agreements.json", agreements)

# 保险：覆盖教学班学生及指导教师
insurance = []
insurance_states = [
    "approved", "approved", "approved",
    "pending", "not_submitted", "rejected"
]

for i, cls in enumerate(teaching_classes):
    status = insurance_states[i % len(insurance_states)]

    insurance.append({
        "id": mid("INSURANCE", i+1),
        "teaching_class_id": cls["id"],
        "college_id": cls["college_id"],
        "student_ids": cls["student_ids"],
        "teacher_ids": cls["teacher_ids"],
        "liability_insurance": status == "approved",
        "accident_insurance": status == "approved",
        "status": status,
        "review_role": "vice_dean_teaching",
        "is_mock": True
    })

save("insurance.json", insurance)

# 只有保险通过的教学班才允许生成实习任务
tasks = []
approved_insurance = [
    x for x in insurance if x["status"] == "approved"
]

for i, ins in enumerate(approved_insurance):
    cls = next(
        x for x in teaching_classes
        if x["id"] == ins["teaching_class_id"]
    )

    enterprise = enterprises[i % len(enterprises)]

    tasks.append({
        "id": mid("TASK", i+1),
        "teaching_class_id": cls["id"],
        "insurance_id": ins["id"],
        "enterprise_id": enterprise["id"],
        "college_id": cls["college_id"],
        "student_ids": cls["student_ids"],
        "task_type": "concentrated_internship",
        "status": "created",
        "start_date": "2026-11-01",
        "end_date": "2026-11-28",
        "is_mock": True
    })

save("internship_tasks.json", tasks)

# 假期及分散实习：模拟完整四级审批
approval_roles = [
    "vice_dean_teaching",
    "deputy_secretary",
    "dean",
    "party_secretary"
]

applications = []
approvals = []

for i in range(24):
    student = students[i]
    passed_steps = i % 5

    application_id = mid("APPLICATION", i+1)

    applications.append({
        "id": application_id,
        "student_id": student["id"],
        "college_id": student["college_id"],
        "application_type": (
            "holiday" if i % 2 == 0 else "decentralized"
        ),
        "liability_insurance": True,
        "accident_insurance": True,
        "safety_training": True,
        "tripartite_agreement": True,
        "approved_steps": passed_steps,
        "status": (
            "approved" if passed_steps == 4 else "pending_approval"
        ),
        "is_mock": True
    })

    for step in range(passed_steps):
        approvals.append({
            "id": mid("APPROVAL", len(approvals)+1),
            "application_id": application_id,
            "step": step+1,
            "role_code": approval_roles[step],
            "result": "approved",
            "is_mock": True
        })

save("internship_applications.json", applications)
save("approvals.json", approvals)

# 自动验证关联及核心业务约束
student_ids = {x["id"] for x in students}
insurance_by_id = {x["id"]: x for x in insurance}
class_ids = {x["id"] for x in teaching_classes}

assert all(
    sid in student_ids
    for cls in teaching_classes
    for sid in cls["student_ids"]
)

assert all(
    task["teaching_class_id"] in class_ids
    and insurance_by_id[task["insurance_id"]]["status"] == "approved"
    and insurance_by_id[task["insurance_id"]]["teaching_class_id"]
        == task["teaching_class_id"]
    for task in tasks
)

assert all(
    app["status"] != "approved" or app["approved_steps"] == 4
    for app in applications
)

report = {
    "validation": "PASS",
    "student_identity": "synthetic_only",
    "mysql_modified": False,
    "counts": {
        "majors": len(majors),
        "enterprises": len(enterprises),
        "bases": len(bases),
        "natural_classes": len(natural_classes),
        "students": len(students),
        "teachers": len(teachers),
        "teaching_classes": len(teaching_classes),
        "agreements": len(agreements),
        "insurance": len(insurance),
        "internship_tasks": len(tasks),
        "internship_applications": len(applications),
        "approvals": len(approvals)
    },
    "checks": {
        "student_references": "PASS",
        "insurance_gate": "PASS",
        "approval_completion": "PASS"
    }
}

(ROOT / "generated" / "validation_report.json").write_text(
    json.dumps(report, ensure_ascii=False, indent=2),
    encoding="utf-8"
)

print("\n业务Mock数据生成完成，验证结果：PASS")
