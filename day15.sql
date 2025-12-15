SELECT
  pa.present
FROM
  inventory i
  RIGHT JOIN present_assignments pa ON i.present = pa.present
GROUP BY
  pa.present
HAVING
  COUNT(1) > IFNULL(i.quantity, 0)
ORDER BY
  COUNT(1) - IFNULL(i.quantity, 0) DESC
LIMIT
  1