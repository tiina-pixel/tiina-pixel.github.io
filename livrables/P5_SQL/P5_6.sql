SELECT
  rm.departement,
  AVG(rc.note) AS note_moyenne,
  COUNT(*) AS nb_feedbacks
FROM retour_client rc
JOIN ref_magasin rm
  ON rc.ref_magasin = rm.ref_magasin
GROUP BY rm.departement
ORDER BY note_moyenne DESC;