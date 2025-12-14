SELECT
  present
FROM
  (
    SELECT
      'Coal' as present,
      COUNT(1) as naughty_count
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
    UNION
    SELECT
      'Book' as present,
      COUNT(1) as naughty_count
    FROM
      (
        SELECT
          child_id
        FROM
          behaviour_events
        GROUP BY
          child_id
        HAVING
          COUNT(category) = 1
      ) n
    UNION
    SELECT
      'Toy' as present,
      COUNT(1) as naughty_count
    FROM
      (
        SELECT
          child_id
        FROM
          behaviour_events
        GROUP BY
          child_id
        HAVING
          COUNT(category) = 0
      ) n
    ORDER BY
      naughty_count DESC
    LIMIT
      1
  )