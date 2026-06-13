SELECT distinct rc.note, rc.libelle_source, p.titre_produit
FROM retour_client rc
JOIN produit p ON rc.cle_produit = p.cle_produit
WHERE rc.libelle_source = 'Réseaux sociaux'
  AND p.titre_produit = 'TV';