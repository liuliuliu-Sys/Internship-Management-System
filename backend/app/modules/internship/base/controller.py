"""产教融合基地 HTTP 接口。"""

from typing import Annotated

from fastapi import APIRouter, Depends, HTTPException, Path, Query, Security
from fastapi.responses import JSONResponse
from sqlalchemy.ext.asyncio import AsyncSession

from app.common.response import ResponseSchema, SuccessResponse
from app.core.base_schema import AuthSchema
from app.core.dependencies import AuthPermission, db_getter
from app.core.router_class import OperationLogRoute

from .schema import BaseDetailOutSchema, BasePageOutSchema, BaseQueryParam
from .service import InternshipBaseService


BaseRouter = APIRouter(
    route_class=OperationLogRoute,
    prefix="/base",
    tags=["产教融合基地"],
)


def require_temporary_base_read_access(auth: AuthSchema) -> None:
    """基地信息阶段性只读权限。

    超级管理员和具有 internship:base:read:all 权限的用户
    可以查询全校基地数据。

    其他角色暂不开放，等待学院数据归属核定后再实施数据隔离。
    """
    if not auth.user.id:
        raise HTTPException(
            status_code=403,
            detail="当前用户身份无效",
        )

    if auth.user.is_superuser:
        return

    if "internship:base:read:all" in auth.permissions:
        return

    raise HTTPException(
        status_code=403,
        detail="当前账号暂未开放基地数据查询权限",
    )

@BaseRouter.get(
    "/page",
    summary="分页查询产教融合基地",
    response_model=ResponseSchema[BasePageOutSchema],
)
async def get_base_page_controller(
    auth: Annotated[AuthSchema, Security(AuthPermission())],
    db: Annotated[AsyncSession, Depends(db_getter)],
    search: Annotated[BaseQueryParam, Query()],
) -> JSONResponse:
    require_temporary_base_read_access(auth)

    result = await InternshipBaseService(db).get_page(
        search=search,
        allowed_college_ids=None,
    )

    return SuccessResponse(
        data=result.model_dump(),
        msg="查询基地列表成功",
    )


@BaseRouter.get(
    "/detail/{id}",
    summary="查询产教融合基地详情",
    response_model=ResponseSchema[BaseDetailOutSchema],
)
async def get_base_detail_controller(
    auth: Annotated[AuthSchema, Security(AuthPermission())],
    db: Annotated[AsyncSession, Depends(db_getter)],
    id: Annotated[int, Path(ge=1, description="基地ID")],
) -> JSONResponse:
    require_temporary_base_read_access(auth)

    result = await InternshipBaseService(db).get_detail(
        base_id=id,
        allowed_college_ids=None,
    )

    if result is None:
        raise HTTPException(
            status_code=404,
            detail="基地不存在或无权访问",
        )

    return SuccessResponse(
        data=result.model_dump(),
        msg="查询基地详情成功",
    )


