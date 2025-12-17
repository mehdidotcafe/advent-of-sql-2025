SELECT
  f.name
FROM
  facilities f
  CROSS JOIN north_pole np
ORDER BY
  (POWER(f.x - np.x, 2) + POWER(f.y + np.y, 2))
LIMIT
  1