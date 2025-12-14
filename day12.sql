SELECT
  bpa.body_part
FROM
  weapon_properties wp
  JOIN property_effects pe ON pe.property = wp.property
  JOIN body_part_affinities bpa ON bpa.property = pe.property
WHERE
  wp.weapon = 'Hearthfire Torch'
GROUP BY bpa.body_part
ORDER BY SUM(bpa.multiplier * pe.base_damage) DESC
LIMIT 1