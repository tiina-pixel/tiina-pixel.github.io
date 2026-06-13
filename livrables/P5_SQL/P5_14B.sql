SELECT
  (
    (SUM(CASE WHEN note >= 9 THEN 1 ELSE 0 END) * 100.0 / COUNT(*))
    -
    (SUM(CASE WHEN note <= 6 THEN 1 ELSE 0 END) * 100.0 / COUNT(*))
  ) AS nps
FROM retour_client;
