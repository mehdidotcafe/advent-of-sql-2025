SELECT
  DISTINCT wp2.weapon
FROM
  weapon_properties wp2
  JOIN creature_weaknesses cw ON cw.property = wp2.property
WHERE
  wp2.weapon IN (
    SELECT
      wp.weapon
    FROM
      weapon_properties wp
    WHERE
      wp.id NOT IN (
        SELECT
          wp.id
        FROM
          weapon_properties wp
        WHERE
          NOT EXISTS (
            SELECT
              1
            FROM
              creature_weaknesses cw
            WHERE
              cw.type = 'weakness'
              AND cw.property = wp.property
          )
      )
    GROUP BY
      wp.weapon
    HAVING
      COUNT(1) == 3
  )
  AND NOT EXISTS (
    SELECT
      1
    FROM
      creature_weaknesses cw2
      JOIN weapon_properties wp3 ON wp3.property = cw2.property
    WHERE
      cw2.type = 'forbidden'
      AND wp3.weapon = wp2.weapon
  );