SELECT
  r.name
FROM
  reindeer as r
  JOIN checkins as c ON c.reindeer_id = r.id
GROUP BY
  r.name
ORDER BY
  MAX(c.checkin_date) ASC
LIMIT
  1
