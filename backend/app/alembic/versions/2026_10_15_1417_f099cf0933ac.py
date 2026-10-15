"""Existing database baseline.

Revision ID: f099cf0933ac
Revises:

The existing FastApiAdmin database and internship tables were created
before this revision. This baseline performs no schema changes.
"""

from typing import Sequence, Union

revision: str = "f099cf0933ac"
down_revision: Union[str, None] = None
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    pass


def downgrade() -> None:
    pass
