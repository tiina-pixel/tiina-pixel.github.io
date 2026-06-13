SELECT
  libelle_source,
  COUNT(*) AS nb_retours
FROM retour_client
GROUP BY libelle_source;
