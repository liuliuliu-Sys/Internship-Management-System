"""产教融合基地数据库查询层。"""

from sqlalchemy import func, select
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.orm import selectinload

from .model import (
    InternshipBaseModel,
    InternshipBaseMajorModel,
    InternshipEnterpriseModel,
    InternshipMajorModel,
)
from .schema import BaseQueryParam


class InternshipBaseCRUD:
    """基地数据访问层。

    注意：
    - CRUD 不决定用户的数据权限。
    - allowed_college_ids 必须由 Service 根据登录身份计算。
    - None 表示上层已授权全校查询。
    - 空集合表示没有任何学院的数据访问权限。
    """

    def __init__(self, db: AsyncSession) -> None:
        self.db = db

    @staticmethod
    def _apply_filters(
        stmt,
        search: BaseQueryParam,
        allowed_college_ids: set[int] | None,
    ):
        """统一应用查询条件及学院范围。"""

        if allowed_college_ids is not None:
            if not allowed_college_ids:
                stmt = stmt.where(False)
            else:
                stmt = stmt.where(
                    InternshipBaseModel.college_id.in_(allowed_college_ids)
                )

        if search.college_id is not None:
            stmt = stmt.where(
                InternshipBaseModel.college_id == search.college_id
            )

        if search.name:
            name = search.name.strip()
            if name:
                stmt = stmt.where(
                    InternshipBaseModel.name.contains(
                        name,
                        autoescape=True,
                    )
                )

        if search.location_type:
            stmt = stmt.where(
                InternshipBaseModel.location_type == search.location_type
            )

        return stmt

    async def get_page(
        self,
        search: BaseQueryParam,
        allowed_college_ids: set[int] | None,
    ) -> tuple[int, list[InternshipBaseModel]]:
        """分页查询基地。"""

        count_stmt = select(func.count(InternshipBaseModel.id))

        count_stmt = self._apply_filters(
            count_stmt,
            search,
            allowed_college_ids,
        )

        total = (
            await self.db.execute(count_stmt)
        ).scalar_one()

        stmt = (
            select(InternshipBaseModel)
            .options(
                selectinload(InternshipBaseModel.enterprise),
                selectinload(
                    InternshipBaseModel.major_relations
                ).selectinload(
                    InternshipBaseMajorModel.major
                ),
            )
            .order_by(InternshipBaseModel.id.desc())
        )

        stmt = self._apply_filters(
            stmt,
            search,
            allowed_college_ids,
        )

        stmt = stmt.offset(
            (search.page - 1) * search.page_size
        ).limit(search.page_size)

        result = await self.db.execute(stmt)

        return total, list(result.scalars().all())

    async def get_detail(
        self,
        base_id: int,
        allowed_college_ids: set[int] | None,
    ) -> InternshipBaseModel | None:
        """查询单个基地及其企业、专业信息。"""

        stmt = (
            select(InternshipBaseModel)
            .options(
                selectinload(InternshipBaseModel.enterprise),
                selectinload(
                    InternshipBaseModel.major_relations
                ).selectinload(
                    InternshipBaseMajorModel.major
                ),
            )
            .where(InternshipBaseModel.id == base_id)
        )

        if allowed_college_ids is not None:
            if not allowed_college_ids:
                return None

            stmt = stmt.where(
                InternshipBaseModel.college_id.in_(allowed_college_ids)
            )

        result = await self.db.execute(stmt)

        return result.scalar_one_or_none()
