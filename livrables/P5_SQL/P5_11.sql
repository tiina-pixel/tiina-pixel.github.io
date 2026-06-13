SELECT
  SUM(CASE WHEN recommandation = 1 THEN 1 ELSE 0 END) * 100 / COUNT(*) AS taux_recommandation_pct
FROM retour_client;
