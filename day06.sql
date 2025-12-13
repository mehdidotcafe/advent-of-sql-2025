SELECT
  t.name
FROM
  toys as t
  JOIN production_logs pl ON pl.toy_id = t.id
  JOIN production_summary ps ON ps.toy_id = t.id
GROUP BY
  t.id
HAVING
  SUM(pl.quantity) != ps.expected_total
  