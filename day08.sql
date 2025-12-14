SELECT
  GROUP_CONCAT(
    r.letter,
    ""
    ORDER BY
      ts.position
  )
FROM
  runes r
  JOIN teleport_sequence ts ON ts.rune_id = r.id