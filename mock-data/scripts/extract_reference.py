from pathlib import Path
from openpyxl import load_workbook
from collections import Counter
import json
import re

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "source"
OUTPUT = ROOT / "generated" / "reference"
OUTPUT.mkdir(parents=True, exist_ok=True)

def save(name, data):
    path = OUTPUT / name
    path.write_text(
        json.dumps(data, ensure_ascii=False, indent=2, default=str),
        encoding="utf-8"
    )
    print(f"[OK] {name}: {len(data)} 条")

def find_file(keyword):
    files = [
        p for p in SOURCE.glob("*.xlsx")
        if keyword in p.name and not p.name.startswith("~$")
    ]
    if len(files) != 1:
        raise RuntimeError(
            f"文件匹配异常：{keyword}，找到 {len(files)} 份"
        )
    return files[0]

def clean(value):
    return str(value).strip() if value is not None else ""

# 1. 提取7-11基地数据
file = find_file("【7_11】")
wb = load_workbook(file, read_only=True, data_only=True)
ws = wb.active

bases = []
majors = {}

for row_number, row in enumerate(
    ws.iter_rows(min_row=2, values_only=True),
    start=2
):
    values = list(row) + [None] * 9

    name = clean(values[0])
    if not name:
        continue

    major_code = clean(values[3])
    major_name = clean(values[4])

    bases.append({
        "source_id": f"BASE_7_11_{row_number:04d}",
        "base_name": name,
        "location_type": clean(values[1]),
        "established_year": clean(values[2]),
        "major_code": major_code,
        "major_name": major_name,
        "is_entrepreneurship": clean(values[5]),
        "is_demonstration": clean(values[6]),
        "annual_student_visits": values[7],
        "is_industry_cooperation": clean(values[8]),
        "source_file": file.name,
        "source_row": row_number,
        "is_mock": False
    })

    if major_code and major_name:
        key = (major_code, major_name)
        majors[key] = {
            "source_major_code": major_code,
            "major_name": major_name,
            "source_file": file.name,
            "is_mock": False,
            "verification_status": "pending"
        }

wb.close()

save("bases_7_11.json", bases)
save("majors_reference.json", list(majors.values()))

# 2. 提取7-12的业务选项统计，不输出学生身份
file = find_file("【7_12】")
wb = load_workbook(file, read_only=True, data_only=True)
ws = wb.active

categories = {
    "internship_location": Counter(),
    "organization_type": Counter(),
    "industry": Counter(),
    "position_category": Counter(),
    "unified_organization": Counter(),
    "weeks": Counter()
}

record_count = 0

for row in ws.iter_rows(min_row=2, values_only=True):
    values = list(row) + [None] * 10

    if not clean(values[0]):
        continue

    record_count += 1

    mapping = {
        "internship_location": values[2],
        "organization_type": values[4],
        "industry": values[5],
        "position_category": values[6],
        "unified_organization": values[7],
        "weeks": values[8]
    }

    for key, value in mapping.items():
        if clean(value):
            categories[key][clean(value)] += 1

wb.close()

options = {
    "source_file": file.name,
    "source_record_count": record_count,
    "description": "仅包含业务分类及频次，不包含姓名、学号",
    "categories": {
        key: [
            {"value": value, "count": count}
            for value, count in counter.most_common()
        ]
        for key, counter in categories.items()
    }
}

save("internship_options.json", options)

# 3. 提取监管模板完整字段
file = find_file("实习监管数据模板")
wb = load_workbook(file, read_only=True, data_only=True)

ws = wb["实习数据"]
header = next(ws.iter_rows(min_row=1, max_row=1, values_only=True))

fields = [
    {
        "column_index": index,
        "field_name": clean(value)
    }
    for index, value in enumerate(header, start=1)
]

save("supervision_fields.json", fields)

# 4. 提取地区代码
ws = wb["实习地区及代码"]

regions = []
seen = set()

for row in ws.iter_rows(values_only=True):
    for value in row:
        text = clean(value)
        match = re.search(r"(.+)-(\d{6})$", text)

        if not match:
            continue

        name = match.group(1).strip()
        code = match.group(2)

        if code in seen:
            continue

        seen.add(code)

        regions.append({
            "region_name": name,
            "region_code": code,
            "display_name": text
        })

wb.close()

save("region_codes.json", regions)

# 5. 提取暑期实习汇总表的统计字段
file = find_file("暑期高校实习情况汇总表")
wb = load_workbook(file, read_only=True, data_only=True)
ws = wb.active

headers = list(
    ws.iter_rows(min_row=4, max_row=4, values_only=True)
)[0]

summer_fields = [
    {
        "column_index": index,
        "field_name": clean(value)
    }
    for index, value in enumerate(headers, start=1)
]

wb.close()

save("summer_summary_fields.json", summer_fields)

# 6. 生成提取报告
report = {
    "source_excel_count": 6,
    "base_source_rows": len(bases),
    "major_reference_count": len(majors),
    "internship_source_rows": record_count,
    "supervision_field_count": len(fields),
    "region_code_count": len(regions),
    "summer_summary_field_count": len(summer_fields),
    "contains_student_identity_data": False,
    "mysql_modified": False
}

path = ROOT / "generated" / "extraction_report.json"

path.write_text(
    json.dumps(report, ensure_ascii=False, indent=2),
    encoding="utf-8"
)

print()
print("========== 数据提取完成 ==========")

for key, value in report.items():
    print(f"{key}: {value}")

print("==================================")
