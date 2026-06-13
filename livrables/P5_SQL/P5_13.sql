SELECT
  p.typologie_produit,
  AVG(CASE WHEN MONTH(rc.date_achat) BETWEEN 1 AND 3 THEN rc.note END) AS moy_T1,
  AVG(CASE WHEN MONTH(rc.date_achat) BETWEEN 4 AND 6 THEN rc.note END) AS moy_T2
FROM retour_client rc
JOIN produit p ON rc.cle_produit = p.cle_produit
WHERE YEAR(rc.date_achat) = 2021
GROUP BY p.typologie_produit
HAVING moy_T2 > moy_T1;
