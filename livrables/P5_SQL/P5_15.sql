SELECT
  libelle_source,
  (
    (SUM(CASE WHEN note >= 9 THEN 1 ELSE 0 END)
     - SUM(CASE WHEN note <= 6 THEN 1 ELSE 0 END))
    * 100.0 / COUNT(*)
  ) AS nps
FROM retour_client
GROUP BY libelle_source;
