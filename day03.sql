SELECT
  lv.location
FROM
  reindeer as r
  JOIN locations_visited as lv ON lv.reindeer_id = r.id
WHERE
  r.name = 'Blitzen'
GROUP BY
  lv.location
ORDER BY
  MAX(lv.visit_date) DESC
LIMIT
  1