SELECT AVG(rc.note) AS note_moyenne_boissons
FROM retour_client rc
JOIN produit p ON rc.cle_produit = p.cle_produit
WHERE p.titre_produit = 'Boissons';
