from sqlalchemy.sql import text
from sqlalchemy.ext.asyncio import AsyncSession



async def get_monument_by_object_id(session: AsyncSession, object_id: int):
    stmt = text('''
    WITH monument_reasons AS (
        SELECT
            mxr.monument_id,
            string_agg(mr.label, ', ') AS reason_labels
        FROM
            sh_monument_x_reason AS mxr
        JOIN
            sh_monument_reason AS mr
        ON
            mxr.reason_id = mr.id
        GROUP BY
            mxr.monument_id
    )
    SELECT
        ST_AsGeoJSON(m.wkb_geometry, 15)::jsonb AS geojson,
        m.object_id,
        m.street,
        m.housenumber,
        m.postcode,
        m.city,
        m.image_url,
        m.designation,
        m.description,
        m.monument_type,
        r.reason_labels AS monument_reason
    FROM
        sh_monuments AS m
    LEFT JOIN
        monument_reasons AS r
    ON
        m.id = r.monument_id
    WHERE
        m.id = :q
    ''')

    sql = stmt.bindparams(q=object_id)
    result = await session.execute(sql)
    rows = result.mappings().all()

    return [dict(row) for row in rows]
