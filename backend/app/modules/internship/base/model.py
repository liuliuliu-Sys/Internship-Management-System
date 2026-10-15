"""产教融合基地 ORM 模型，映射已有 MySQL 数据表。"""

from datetime import datetime

from sqlalchemy import BigInteger, CHAR, DateTime, ForeignKey, Integer, String, text
from sqlalchemy.dialects.mysql import TINYINT
from sqlalchemy.orm import Mapped, mapped_column, relationship

from app.core.base_model import MappedBase


class InternshipEnterpriseModel(MappedBase):
    """全校共享企业信息。"""

    __tablename__ = "internship_enterprise"

    id: Mapped[int] = mapped_column(BigInteger, primary_key=True, autoincrement=True)
    name: Mapped[str] = mapped_column(String(255), nullable=False)
    credit_code: Mapped[str | None] = mapped_column(String(32), nullable=True)
    address: Mapped[str | None] = mapped_column(String(500), nullable=True)
    contact_name: Mapped[str | None] = mapped_column(String(64), nullable=True)
    contact_phone: Mapped[str | None] = mapped_column(String(32), nullable=True)

    is_mock: Mapped[int] = mapped_column(TINYINT(1), nullable=False, server_default=text("0"))
    data_source: Mapped[str | None] = mapped_column(String(64), nullable=True)
    source_record_id: Mapped[str | None] = mapped_column(String(100), nullable=True)

    created_time: Mapped[datetime] = mapped_column(
        DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP")
    )
    updated_time: Mapped[datetime] = mapped_column(
        DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP")
    )

    bases: Mapped[list["InternshipBaseModel"]] = relationship(
        back_populates="enterprise"
    )


class InternshipMajorModel(MappedBase):
    """专业信息。"""

    __tablename__ = "internship_major"

    id: Mapped[int] = mapped_column(BigInteger, primary_key=True, autoincrement=True)
    code: Mapped[str] = mapped_column(String(32), nullable=False)
    name: Mapped[str] = mapped_column(String(128), nullable=False)

    college_id: Mapped[int | None] = mapped_column(
        Integer,
        ForeignKey(
            "sys_dept.id",
            ondelete="RESTRICT",
            onupdate="CASCADE",
        ),
        nullable=True,
    )

    original_mock_id: Mapped[str | None] = mapped_column(String(64), nullable=True)
    is_mock: Mapped[int] = mapped_column(TINYINT(1), nullable=False, server_default=text("0"))
    data_source: Mapped[str | None] = mapped_column(String(64), nullable=True)

    created_time: Mapped[datetime] = mapped_column(
        DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP")
    )
    updated_time: Mapped[datetime] = mapped_column(
        DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP")
    )

    base_relations: Mapped[list["InternshipBaseMajorModel"]] = relationship(
        back_populates="major"
    )


class InternshipBaseModel(MappedBase):
    """产教融合基地。"""

    __tablename__ = "internship_base"

    id: Mapped[int] = mapped_column(BigInteger, primary_key=True, autoincrement=True)
    name: Mapped[str] = mapped_column(String(255), nullable=False)

    enterprise_id: Mapped[int | None] = mapped_column(
        BigInteger,
        ForeignKey(
            "internship_enterprise.id",
            ondelete="RESTRICT",
            onupdate="CASCADE",
        ),
        nullable=True,
    )

    college_id: Mapped[int | None] = mapped_column(
        Integer,
        ForeignKey(
            "sys_dept.id",
            ondelete="RESTRICT",
            onupdate="CASCADE",
        ),
        nullable=True,
    )

    location_type: Mapped[str] = mapped_column(String(16), nullable=False)
    address: Mapped[str | None] = mapped_column(String(500), nullable=True)
    established_year: Mapped[str | None] = mapped_column(CHAR(4), nullable=True)

    original_mock_id: Mapped[str | None] = mapped_column(String(64), nullable=True)
    is_mock: Mapped[int] = mapped_column(TINYINT(1), nullable=False, server_default=text("0"))
    data_source: Mapped[str | None] = mapped_column(String(64), nullable=True)

    created_time: Mapped[datetime] = mapped_column(
        DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP")
    )
    updated_time: Mapped[datetime] = mapped_column(
        DateTime, nullable=False, server_default=text("CURRENT_TIMESTAMP")
    )

    enterprise: Mapped["InternshipEnterpriseModel | None"] = relationship(
        back_populates="bases"
    )

    major_relations: Mapped[list["InternshipBaseMajorModel"]] = relationship(
        back_populates="base"
    )


class InternshipBaseMajorModel(MappedBase):
    """基地与专业关联。"""

    __tablename__ = "internship_base_major"

    id: Mapped[int] = mapped_column(BigInteger, primary_key=True, autoincrement=True)

    base_id: Mapped[int] = mapped_column(
        BigInteger,
        ForeignKey(
            "internship_base.id",
            ondelete="CASCADE",
            onupdate="CASCADE",
        ),
        nullable=False,
    )

    major_id: Mapped[int] = mapped_column(
        BigInteger,
        ForeignKey(
            "internship_major.id",
            ondelete="RESTRICT",
            onupdate="CASCADE",
        ),
        nullable=False,
    )

    is_entrepreneurship: Mapped[int] = mapped_column(
        TINYINT(1), nullable=False, server_default=text("0")
    )

    is_demonstration: Mapped[int] = mapped_column(
        TINYINT(1), nullable=False, server_default=text("0")
    )

    is_industry_cooperation: Mapped[int] = mapped_column(
        TINYINT(1), nullable=False, server_default=text("0")
    )

    annual_student_visits: Mapped[int] = mapped_column(
        Integer, nullable=False, server_default=text("0")
    )

    source_record_id: Mapped[str | None] = mapped_column(
        String(100), nullable=True
    )

    base: Mapped["InternshipBaseModel"] = relationship(
        back_populates="major_relations"
    )

    major: Mapped["InternshipMajorModel"] = relationship(
        back_populates="base_relations"
    )
