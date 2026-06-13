SELECT
  ref_magasin,
  COUNT(*) AS nb_feedbacks
FROM retour_client
GROUP BY ref_magasin
ORDER BY nb_feedbacks DESC
LIMIT 5;
