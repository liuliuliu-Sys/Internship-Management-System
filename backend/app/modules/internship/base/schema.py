"""产教融合基地接口数据结构。"""

from pydantic import BaseModel, ConfigDict, Field


class BaseQueryParam(BaseModel):
    """基地列表查询条件。"""

    page: int = Field(default=1, ge=1, description="当前页码")
    page_size: int = Field(default=10, ge=1, le=100, description="每页条数")

    name: str | None = Field(
        default=None,
        max_length=255,
        description="基地名称，支持模糊查询",
    )

    college_id: int | None = Field(
        default=None,
        ge=1,
        description="所属学院ID",
    )

    location_type: str | None = Field(
        default=None,
        description="基地类型：校内或校外",
    )


class BaseMajorOutSchema(BaseModel):
    """基地关联专业信息。"""

    model_config = ConfigDict(from_attributes=True)

    id: int = Field(description="专业ID")
    code: str = Field(description="专业代码")
    name: str = Field(description="专业名称")

    is_entrepreneurship: bool = Field(description="是否创业基地")
    is_demonstration: bool = Field(description="是否示范基地")
    is_industry_cooperation: bool = Field(description="是否行业企业共建基地")

    annual_student_visits: int = Field(
        description="该专业对应的学年接纳人次"
    )


class BaseOutSchema(BaseModel):
    """基地列表数据。"""

    model_config = ConfigDict(from_attributes=True)

    id: int = Field(description="基地ID")
    name: str = Field(description="基地名称")

    enterprise_id: int | None = Field(default=None, description="企业ID")
    enterprise_name: str | None = Field(default=None, description="企业名称")

    college_id: int | None = Field(default=None, description="所属学院ID")
    college_name: str | None = Field(default=None, description="所属学院名称")

    location_type: str = Field(description="校内或校外")

    address: str | None = Field(default=None, description="基地详细地点")

    established_year: str | None = Field(
        default=None,
        description="建立年份",
    )

    major_codes: list[str] = Field(
        default_factory=list,
        description="面向专业代码列表",
    )

    major_names: list[str] = Field(
        default_factory=list,
        description="面向专业名称列表",
    )

    annual_student_visits: int = Field(
        default=0,
        description="基地学年接纳总人次",
    )


class BaseDetailOutSchema(BaseOutSchema):
    """基地详情。"""

    enterprise_credit_code: str | None = Field(
        default=None,
        description="企业统一社会信用代码",
    )

    enterprise_address: str | None = Field(
        default=None,
        description="企业地址",
    )

    enterprise_contact_name: str | None = Field(
        default=None,
        description="企业联系人",
    )

    enterprise_contact_phone: str | None = Field(
        default=None,
        description="企业联系电话",
    )

    majors: list[BaseMajorOutSchema] = Field(
        default_factory=list,
        description="关联专业及统计属性",
    )


class BasePageOutSchema(BaseModel):
    """基地分页查询结果。"""

    total: int = Field(description="符合查询条件的基地总数")
    page: int = Field(description="当前页码")
    page_size: int = Field(description="每页条数")
    records: list[BaseOutSchema] = Field(
        default_factory=list,
        description="当前页基地记录",
    )
