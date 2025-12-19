SELECT
  sa.name
FROM
  storage_areas sa
  JOIN unloaded_items ui ON ui.area_id = sa.area_id
GROUP BY
  sa.area_id
HAVING
  SUM(ui.quantity) >= sa.min_quantity
ORDER BY
  sa.name ASC
LIMIT
  1