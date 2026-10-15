"""合作企业 HTTP 接口。"""

from typing import Annotated

from fastapi import APIRouter, Depends, HTTPException, Path, Query, Security
from fastapi.responses import JSONResponse
from sqlalchemy.ext.asyncio import AsyncSession

from app.common.response import ResponseSchema, SuccessResponse
from app.core.base_schema import AuthSchema
from app.core.dependencies import AuthPermission, db_getter
from app.core.router_class import OperationLogRoute

from .schema import (
    EnterpriseBaseOutSchema,
    EnterpriseOutSchema,
    EnterprisePageOutSchema,
    EnterpriseQueryParam,
    EnterpriseWriteSchema,
)
from .service import InternshipEnterpriseService


EnterpriseRouter = APIRouter(
    route_class=OperationLogRoute,
    prefix="/enterprise",
    tags=["合作企业管理"],
)


def require_temporary_enterprise_access(auth: AuthSchema) -> None:
    """第一阶段联调授权，正式角色操作权限配置后替换。"""
    if not auth.user.id or not auth.user.is_superuser:
        raise HTTPException(
            status_code=403,
            detail="企业管理功能正在联调，当前账号暂未开放访问权限",
        )


@EnterpriseRouter.get(
    "/page",
    summary="分页查询合作企业",
    response_model=ResponseSchema[EnterprisePageOutSchema],
)
async def get_enterprise_page(
    auth: Annotated[AuthSchema, Security(AuthPermission())],
    db: Annotated[AsyncSession, Depends(db_getter)],
    search: Annotated[EnterpriseQueryParam, Query()],
) -> JSONResponse:
    require_temporary_enterprise_access(auth)
    result = await InternshipEnterpriseService(db).get_page(search)
    return SuccessResponse(
        data=result.model_dump(mode="json"),
        msg="查询企业列表成功",
    )


@EnterpriseRouter.get(
    "/detail/{id}",
    summary="查询企业详情",
    response_model=ResponseSchema[EnterpriseOutSchema],
)
async def get_enterprise_detail(
    auth: Annotated[AuthSchema, Security(AuthPermission())],
    db: Annotated[AsyncSession, Depends(db_getter)],
    id: Annotated[int, Path(ge=1)],
) -> JSONResponse:
    require_temporary_enterprise_access(auth)
    result = await InternshipEnterpriseService(db).get_detail(id)
    return SuccessResponse(
        data=result.model_dump(mode="json"),
        msg="查询企业详情成功",
    )


@EnterpriseRouter.get(
    "/{id}/bases",
    summary="查询企业关联基地",
    response_model=ResponseSchema[list[EnterpriseBaseOutSchema]],
)
async def get_enterprise_bases(
    auth: Annotated[AuthSchema, Security(AuthPermission())],
    db: Annotated[AsyncSession, Depends(db_getter)],
    id: Annotated[int, Path(ge=1)],
) -> JSONResponse:
    require_temporary_enterprise_access(auth)
    result = await InternshipEnterpriseService(db).get_bases(id)
    return SuccessResponse(
        data=[item.model_dump(mode="json") for item in result],
        msg="查询关联基地成功",
    )


@EnterpriseRouter.post(
    "/create",
    summary="新增合作企业",
    response_model=ResponseSchema[EnterpriseOutSchema],
)
async def create_enterprise(
    auth: Annotated[AuthSchema, Security(AuthPermission())],
    db: Annotated[AsyncSession, Depends(db_getter)],
    data: EnterpriseWriteSchema,
) -> JSONResponse:
    require_temporary_enterprise_access(auth)
    result = await InternshipEnterpriseService(db).create(data)
    return SuccessResponse(
        data=result.model_dump(mode="json"),
        msg="新增企业成功",
    )


@EnterpriseRouter.put(
    "/update/{id}",
    summary="编辑合作企业",
    response_model=ResponseSchema[EnterpriseOutSchema],
)
async def update_enterprise(
    auth: Annotated[AuthSchema, Security(AuthPermission())],
    db: Annotated[AsyncSession, Depends(db_getter)],
    id: Annotated[int, Path(ge=1)],
    data: EnterpriseWriteSchema,
) -> JSONResponse:
    require_temporary_enterprise_access(auth)
    result = await InternshipEnterpriseService(db).update(id, data)
    return SuccessResponse(
        data=result.model_dump(mode="json"),
        msg="编辑企业成功",
    )
