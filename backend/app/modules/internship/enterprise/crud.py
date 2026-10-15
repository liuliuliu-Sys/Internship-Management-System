"""合作企业数据库访问层。"""

from sqlalchemy import func, select
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.orm import selectinload

from app.modules.internship.base.model import (
    InternshipBaseModel,
    InternshipEnterpriseModel,
)

from .schema import EnterpriseQueryParam


class InternshipEnterpriseCRUD:
    def __init__(self, db: AsyncSession) -> None:
        self.db = db

    @staticmethod
    def apply_filters(stmt, search: EnterpriseQueryParam):
        if search.name and search.name.strip():
            stmt = stmt.where(
                InternshipEnterpriseModel.name.contains(
                    search.name.strip(), autoescape=True
                )
            )

        if search.credit_code and search.credit_code.strip():
            stmt = stmt.where(
                InternshipEnterpriseModel.credit_code.contains(
                    search.credit_code.strip(), autoescape=True
                )
            )

        return stmt

    async def get_page(self, search: EnterpriseQueryParam):
        count_stmt = self.apply_filters(
            select(func.count(InternshipEnterpriseModel.id)), search
        )
        total = (await self.db.execute(count_stmt)).scalar_one()

        stmt = (
            select(InternshipEnterpriseModel)
            .options(selectinload(InternshipEnterpriseModel.bases))
            .order_by(InternshipEnterpriseModel.id.desc())
        )
        stmt = self.apply_filters(stmt, search)
        stmt = stmt.offset(
            (search.page - 1) * search.page_size
        ).limit(search.page_size)

        result = await self.db.execute(stmt)
        return total, list(result.scalars().all())

    async def get_detail(self, enterprise_id: int):
        stmt = (
            select(InternshipEnterpriseModel)
            .options(selectinload(InternshipEnterpriseModel.bases))
            .where(InternshipEnterpriseModel.id == enterprise_id)
        )
        result = await self.db.execute(stmt)
        return result.scalar_one_or_none()

    async def get_by_credit_code(
        self, credit_code: str, exclude_id: int | None = None
    ):
        stmt = select(InternshipEnterpriseModel).where(
            InternshipEnterpriseModel.credit_code == credit_code
        )
        if exclude_id is not None:
            stmt = stmt.where(InternshipEnterpriseModel.id != exclude_id)

        result = await self.db.execute(stmt.limit(1))
        return result.scalar_one_or_none()

    async def get_bases(self, enterprise_id: int):
        stmt = (
            select(InternshipBaseModel)
            .where(InternshipBaseModel.enterprise_id == enterprise_id)
            .order_by(InternshipBaseModel.id.desc())
        )
        result = await self.db.execute(stmt)
        return list(result.scalars().all())
