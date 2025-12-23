SELECT
  c.region
FROM
  deliveries d
  JOIN children c ON c.child_id = d.child_id
  JOIN gifts g ON d.child_id = g.child_id
WHERE
  d.status = 'delivered'
GROUP BY
  c.region
ORDER BY
  SUM(g.value) DESC
LIMIT
  1