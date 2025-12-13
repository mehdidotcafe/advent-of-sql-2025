SELECT
  GROUP_CONCAT(SUBSTRING(cm.word, 1, 1), '')
FROM
  reindeer as r
  JOIN clearing_messages as cm ON cm.reindeer_id = r.id
WHERE
  r.name = 'Blitzen'
ORDER BY
  cm.word_position