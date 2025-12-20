WITH rc AS (
  SELECT
    f.region,
    SUM(1) as c
  FROM
    children c
    JOIN families f ON f.family_id = c.family_id
  GROUP BY
    f.region
)
SELECT
  rc.region
FROM
  rc
ORDER BY
  rc.c DESC
LIMIT
  1