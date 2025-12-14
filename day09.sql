SELECT
  tl.sig_hash
FROM
  teleport_log tl
  LEFT JOIN known_beings kb ON kb.sig_hash = tl.sig_hash
WHERE
  kb.id IS NULL
ORDER BY
  tl.energy DESC
LIMIT
  1