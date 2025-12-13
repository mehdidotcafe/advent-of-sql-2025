SELECT
  COUNT(1)
FROM
  (
    SELECT
      1
    FROM
      temperature_readings as tr
    GROUP BY
      tr.reading_date
    HAVING
      AVG(tr.temp_celsius) > 0
  )