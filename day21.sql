WITH regions as (
  SELECT region, score
  FROM air_traffic
  UNION ALL
  SELECT region, score FROM aurora_readings
  UNION ALL 
  SELECT region, score FROM weather_stations
)
SELECT region
FROM regions
GROUP BY region 
ORDER BY SUM(score) DESC
LIMIT 1