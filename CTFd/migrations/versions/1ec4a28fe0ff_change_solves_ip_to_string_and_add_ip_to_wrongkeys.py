"""Change Solves IP to String and add IP to WrongKeys

Revision ID: 1ec4a28fe0ff
Revises: c7225db614c1
Create Date: 2017-07-08 17:08:59.098805

"""
from CTFd.models import db, Solves, WrongKeys
from alembic import op
import sqlalchemy as sa
from sqlalchemy.sql import text, table, column
import netaddr

def ip2long(ip):
    '''Converts a user's IP address into an integer/long'''
    return int(netaddr.IPAddress(ip))


def long2ip(ip_int):
    '''Converts a saved integer/long back into an IP address'''
    return str(netaddr.IPAddress(ip_int))


# revision identifiers, used by Alembic.
revision = '1ec4a28fe0ff'
down_revision = 'c7225db614c1'
branch_labels = None
depends_on = None

solves_table = table('solves',
    column('id', db.Integer),
    column('ip', db.Integer),
)

tracking_table = table('tracking',
    column('id', db.Integer),
    column('ip', db.String(46)),
    column('team', db.Integer),
    column('date', db.DateTime),
)


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    connection = op.get_bind()

    op.alter_column('solves', 'ip', existing_type=sa.Integer(), type_=sa.String(length=46))
    for solve in connection.execute(solves_table.select()):
        connection.execute(
            solves_table.update().where(
                solves_table.c.id == solve.id
            ).values(
                ip=long2ip(solve.ip),
            )
        )

    op.alter_column('tracking', 'ip', existing_type=sa.Integer(), type_=sa.String(length=46))
    for track in connection.execute(tracking_table.select()):
        connection.execute(
            tracking_table.update().where(
                tracking_table.c.id == track.id
            ).values(
                ip=long2ip(track.ip),
            )
        )
    op.add_column('wrong_keys', sa.Column('ip', sa.String(length=46), nullable=True))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    connection = op.get_bind()
    for solve in connection.execute(solves_table.select()):
        connection.execute(
            solves_table.update().where(
                solves_table.c.id == solve.id
            ).values(
                ip=ip2long(solve.ip),
            )
        )

    for track in connection.execute(tracking_table.select()):
        connection.execute(
            tracking_table.update().where(
                tracking_table.c.id == track.id
            ).values(
                ip=ip2long(track.ip),
            )
        )

    op.alter_column('solves', 'ip', existing_type=sa.String(length=46), type_=sa.Integer())
    op.alter_column('tracking', 'ip', existing_type=sa.String(length=46), type_=sa.Integer())
    op.drop_column('wrong_keys', 'ip')
    # ### end Alembic commands ###
