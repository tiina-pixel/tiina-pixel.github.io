SELECT
  ref_magasin,
  AVG(note) AS note_moyenne
FROM retour_client
GROUP BY ref_magasin
ORDER BY note_moyenne DESC
LIMIT 5;
