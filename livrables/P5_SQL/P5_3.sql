SELECT
  p.typologie_produit,
round(AVG(rc.note),1) AS note_moyenne
FROM retour_client rc
JOIN produit p ON rc.cle_produit = p.cle_produit
GROUP BY p.typologie_produit
ORDER BY note_moyenne DESC;
