SELECT
  DAYNAME(date_achat) AS jour_semaine,
  AVG(note) AS note_moyenne
FROM retour_client
WHERE libelle_categorie = 'expérience en magasin'
GROUP BY DAYNAME(date_achat)
ORDER BY note_moyenne DESC;
