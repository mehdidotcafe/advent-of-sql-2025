SELECT
  child_name
FROM
  delivery_schedule ds
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      sleigh_manifest sm
    WHERE
      sm.child_id = ds.child_id
  )