"""产教融合基地业务服务层。"""

from sqlalchemy import select
from sqlalchemy.ext.asyncio import AsyncSession

from app.modules.system.dept.model import DeptModel

from .crud import InternshipBaseCRUD
from .model import InternshipBaseModel
from .schema import (
    BaseDetailOutSchema,
    BaseMajorOutSchema,
    BaseOutSchema,
    BasePageOutSchema,
    BaseQueryParam,
)


class InternshipBaseService:
    """基地业务服务。

    allowed_college_ids 必须由可信的服务端权限逻辑生成，
    不允许直接使用前端提交的学院范围作为授权依据。

    None：调用方已获得全校数据查询授权。
    set()：无学院数据访问权限。
    {学院ID}：仅允许查询指定学院。
    """

    def __init__(self, db: AsyncSession) -> None:
        self.db = db
        self.crud = InternshipBaseCRUD(db)

    async def _get_college_names(
        self,
        college_ids: set[int],
    ) -> dict[int, str]:
        """批量获取学院名称，避免逐条查询。"""

        if not college_ids:
            return {}

        stmt = select(
            DeptModel.id,
            DeptModel.name,
        ).where(
            DeptModel.id.in_(college_ids)
        )

        result = await self.db.execute(stmt)

        return {
            dept_id: dept_name
            for dept_id, dept_name in result.all()
        }

    @staticmethod
    def _get_majors(base: InternshipBaseModel) -> list[BaseMajorOutSchema]:
        """整理基地关联的专业和统计属性。"""

        majors = []

        for relation in base.major_relations:
            major = relation.major

            if major is None:
                continue

            majors.append(
                BaseMajorOutSchema(
                    id=major.id,
                    code=major.code,
                    name=major.name,
                    is_entrepreneurship=bool(
                        relation.is_entrepreneurship
                    ),
                    is_demonstration=bool(
                        relation.is_demonstration
                    ),
                    is_industry_cooperation=bool(
                        relation.is_industry_cooperation
                    ),
                    annual_student_visits=relation.annual_student_visits,
                )
            )

        return sorted(
            majors,
            key=lambda item: (item.code, item.id),
        )

    @classmethod
    def _to_base_out(
        cls,
        base: InternshipBaseModel,
        college_names: dict[int, str],
    ) -> BaseOutSchema:
        """将 ORM 对象转换为对外公开的业务数据。"""

        majors = cls._get_majors(base)
        enterprise = base.enterprise

        return BaseOutSchema(
            id=base.id,
            name=base.name,
            enterprise_id=base.enterprise_id,
            enterprise_name=enterprise.name if enterprise else None,
            college_id=base.college_id,
            college_name=college_names.get(base.college_id),
            location_type=base.location_type,
            address=base.address,
            established_year=base.established_year,
            major_codes=[item.code for item in majors],
            major_names=[item.name for item in majors],
            annual_student_visits=sum(
                item.annual_student_visits for item in majors
            ),
        )

    async def get_page(
        self,
        search: BaseQueryParam,
        allowed_college_ids: set[int] | None,
    ) -> BasePageOutSchema:
        """获取经过学院范围过滤的基地分页数据。"""

        total, bases = await self.crud.get_page(
            search=search,
            allowed_college_ids=allowed_college_ids,
        )

        college_ids = {
            base.college_id
            for base in bases
            if base.college_id is not None
        }

        college_names = await self._get_college_names(college_ids)

        records = [
            self._to_base_out(base, college_names)
            for base in bases
        ]

        return BasePageOutSchema(
            total=total,
            page=search.page,
            page_size=search.page_size,
            records=records,
        )

    async def get_detail(
        self,
        base_id: int,
        allowed_college_ids: set[int] | None,
    ) -> BaseDetailOutSchema | None:
        """获取经过学院范围过滤的基地详情。"""

        base = await self.crud.get_detail(
            base_id=base_id,
            allowed_college_ids=allowed_college_ids,
        )

        if base is None:
            return None

        college_ids = (
            {base.college_id}
            if base.college_id is not None
            else set()
        )

        college_names = await self._get_college_names(college_ids)

        base_out = self._to_base_out(base, college_names)

        enterprise = base.enterprise

        return BaseDetailOutSchema(
            **base_out.model_dump(),
            enterprise_credit_code=(
                enterprise.credit_code if enterprise else None
            ),
            enterprise_address=(
                enterprise.address if enterprise else None
            ),
            enterprise_contact_name=(
                enterprise.contact_name if enterprise else None
            ),
            enterprise_contact_phone=(
                enterprise.contact_phone if enterprise else None
            ),
            majors=self._get_majors(base),
        )
