"""合作企业管理接口结构。"""

from datetime import datetime

from pydantic import BaseModel, ConfigDict, Field, field_validator


class EnterpriseQueryParam(BaseModel):
    page: int = Field(default=1, ge=1)
    page_size: int = Field(default=20, ge=1, le=100)
    name: str | None = Field(default=None, max_length=255)
    credit_code: str | None = Field(default=None, max_length=32)


class EnterpriseWriteSchema(BaseModel):
    name: str = Field(min_length=1, max_length=255)
    credit_code: str | None = Field(default=None, max_length=32)
    address: str | None = Field(default=None, max_length=500)
    contact_name: str | None = Field(default=None, max_length=64)
    contact_phone: str | None = Field(default=None, max_length=32)

    @field_validator("name")
    @classmethod
    def validate_name(cls, value: str) -> str:
        value = value.strip()
        if not value:
            raise ValueError("企业名称不能为空")
        return value

    @field_validator(
        "credit_code", "address", "contact_name", "contact_phone"
    )
    @classmethod
    def normalize_optional(cls, value: str | None) -> str | None:
        if value is None:
            return None
        value = value.strip()
        return value or None


class EnterpriseOutSchema(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    name: str
    credit_code: str | None = None
    address: str | None = None
    contact_name: str | None = None
    contact_phone: str | None = None
    created_time: datetime
    updated_time: datetime
    base_count: int = 0


class EnterprisePageOutSchema(BaseModel):
    total: int
    page: int
    page_size: int
    records: list[EnterpriseOutSchema] = Field(default_factory=list)


class EnterpriseBaseOutSchema(BaseModel):
    id: int
    name: str
    location_type: str
    address: str | None = None
    established_year: str | None = None
