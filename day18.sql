SELECT
  SUM(s.shipment_id)
from
  categories c
  JOIN shipments s ON s.category_id = c.category_id
  AND s.weight <= c.max_weight
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      categories c2
      JOIN shipments s2 ON s2.category_id = c2.category_id
      AND s2.weight <= c2.max_weight
    WHERE
      c2.category_id = c.category_id
      AND (
        s2.priority > s.priority
        OR (
          s2.priority = s.priority
          AND s2.shipment_id > s.shipment_id
        )
      )
  )