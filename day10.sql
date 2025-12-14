SELECT
  DISTINCT creature
FROM
  creature_traits
WHERE
  creature NOT IN (
    SELECT
      ct.creature
    FROM
      creature_traits ct
    WHERE
      ct.fragment NOT IN (
        SELECT
          rf.fragment
        FROM
          rune_fragments rf
        WHERE
          rf.sig_hash = 'VOID-7F3C'
      )
  )