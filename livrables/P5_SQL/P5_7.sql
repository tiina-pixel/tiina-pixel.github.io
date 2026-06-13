SELECT
  p.typologie_produit,
  AVG(rc.note) AS note_sav
FROM retour_client rc
JOIN produit p ON rc.cle_produit = p.cle_produit
WHERE rc.libelle_categorie = 'Service après-vente'
GROUP BY p.typologie_produit
ORDER BY note_sav DESC;
