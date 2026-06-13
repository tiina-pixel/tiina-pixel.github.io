SELECT COUNT(*) AS nb_retours_livraison
FROM retour_client
WHERE libelle_categorie = 'Livraison';
