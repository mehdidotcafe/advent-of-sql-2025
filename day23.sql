SELECT
  r.name
FROM
  reindeer r,
  reindeer r2
WHERE
  r.flight_style = r2.flight_style
  AND r2.name = 'Comet'
  AND r.role = 'reserve'
ORDER BY
  r.stamina DESC
LIMIT
  1