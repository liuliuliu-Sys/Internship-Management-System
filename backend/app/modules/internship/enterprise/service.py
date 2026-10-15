"""合作企业业务服务层。"""

from fastapi import HTTPException
from sqlalchemy.ext.asyncio import AsyncSession

from app.modules.internship.base.model import InternshipEnterpriseModel

from .crud import InternshipEnterpriseCRUD
from .schema import (
    EnterpriseBaseOutSchema,
    EnterpriseOutSchema,
    EnterprisePageOutSchema,
    EnterpriseQueryParam,
    EnterpriseWriteSchema,
)


class InternshipEnterpriseService:
    def __init__(self, db: AsyncSession) -> None:
        self.db = db
        self.crud = InternshipEnterpriseCRUD(db)

    @staticmethod
    def to_out(obj: InternshipEnterpriseModel) -> EnterpriseOutSchema:
        return EnterpriseOutSchema(
            id=obj.id,
            name=obj.name,
            credit_code=obj.credit_code,
            address=obj.address,
            contact_name=obj.contact_name,
            contact_phone=obj.contact_phone,
            created_time=obj.created_time,
            updated_time=obj.updated_time,
            base_count=len(obj.bases),
        )

    async def get_page(
        self, search: EnterpriseQueryParam
    ) -> EnterprisePageOutSchema:
        total, objects = await self.crud.get_page(search)
        return EnterprisePageOutSchema(
            total=total,
            page=search.page,
            page_size=search.page_size,
            records=[self.to_out(obj) for obj in objects],
        )

    async def get_detail(self, enterprise_id: int) -> EnterpriseOutSchema:
        obj = await self.crud.get_detail(enterprise_id)
        if obj is None:
            raise HTTPException(status_code=404, detail="企业不存在")
        return self.to_out(obj)

    async def get_bases(
        self, enterprise_id: int
    ) -> list[EnterpriseBaseOutSchema]:
        if await self.crud.get_detail(enterprise_id) is None:
            raise HTTPException(status_code=404, detail="企业不存在")

        bases = await self.crud.get_bases(enterprise_id)
        return [
            EnterpriseBaseOutSchema(
                id=base.id,
                name=base.name,
                location_type=base.location_type,
                address=base.address,
                established_year=base.established_year,
            )
            for base in bases
        ]

    async def validate_credit_code(
        self, credit_code: str | None, exclude_id: int | None = None
    ) -> None:
        if not credit_code:
            return

        existing = await self.crud.get_by_credit_code(
            credit_code, exclude_id=exclude_id
        )
        if existing is not None:
            raise HTTPException(
                status_code=409,
                detail="统一社会信用代码已被其他企业使用",
            )

    async def create(
        self, data: EnterpriseWriteSchema
    ) -> EnterpriseOutSchema:
        await self.validate_credit_code(data.credit_code)

        obj = InternshipEnterpriseModel(**data.model_dump())
        self.db.add(obj)
        await self.db.flush()

        # 重新查询，确保关联集合已按当前会话加载。
        result = await self.crud.get_detail(obj.id)
        return self.to_out(result)

    async def update(
        self, enterprise_id: int, data: EnterpriseWriteSchema
    ) -> EnterpriseOutSchema:
        obj = await self.crud.get_detail(enterprise_id)
        if obj is None:
            raise HTTPException(status_code=404, detail="企业不存在")

        await self.validate_credit_code(
            data.credit_code, exclude_id=enterprise_id
        )

        for field, value in data.model_dump().items():
            setattr(obj, field, value)

        await self.db.flush()
        return self.to_out(obj)
