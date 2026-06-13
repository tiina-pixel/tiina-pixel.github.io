SELECT
  MONTH(date_achat) AS mois,
  COUNT(*) AS nb_retours
FROM retour_client
WHERE libelle_categorie = 'Service après-vente'
GROUP BY mois
ORDER BY nb_retours DESC;