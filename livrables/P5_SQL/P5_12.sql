SELECT
  ref_magasin,
  AVG(note) AS note_moyenne_magasin , 
(SELECT AVG(note) FROM retour_client) As Note_Moyenne
FROM retour_client
GROUP BY ref_magasin
HAVING AVG(note) < (SELECT AVG(note) FROM retour_client);