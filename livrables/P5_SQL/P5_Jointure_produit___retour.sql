SELECT
  rc.cle_retour_client,
  rc.note,
  p.titre_produit,
  p.typologie_produit
FROM retour_client rc
LEFT JOIN produit p
  ON rc.cle_produit = p.cle_produit
LIMIT 10;
