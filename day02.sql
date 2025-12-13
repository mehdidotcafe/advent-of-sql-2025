SELECT
  e.name
from
  elves as e
  JOIN elf_checkins as ec ON e.id = ec.elf_id
  AND ec.work_date IN (
    SELECT
      c.checkin_date
    FROM
      reindeer as r
      JOIN checkins as c ON c.reindeer_id = r.id
    WHERE
      r.name = 'Blitzen'
  )
GROUP BY
  e.name
ORDER BY
  COUNT(ec.work_date) DESC
LIMIT
  1
