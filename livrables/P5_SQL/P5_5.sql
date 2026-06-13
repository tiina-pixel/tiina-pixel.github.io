SELECT
  ref_magasin,
  COUNT(*) AS nb_feedbacks
FROM retour_client
WHERE libelle_categorie = 'Drive'
GROUP BY ref_magasin
HAVING COUNT(*) > 12;
