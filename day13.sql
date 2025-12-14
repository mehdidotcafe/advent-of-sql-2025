SELECT
  COUNT(1)
FROM
  (
    SELECT
      child_id
    FROM
      behaviour_events
    GROUP BY
      child_id
    HAVING
      COUNT(category) > 1
  ) n