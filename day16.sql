SELECT
  si.supplier
FROM
  supplier_inventory si
  JOIN snow_globe_materials sgm ON sgm.material = si.material
GROUP BY
  si.supplier
ORDER BY
  MIN(si.qty / sgm.qty) DESC,
  si.supplier ASC
LIMIT
  1