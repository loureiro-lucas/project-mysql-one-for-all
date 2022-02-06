SELECT
	CONCAT(MIN(p.valor), '.00') AS faturamento_minimo,
  CONVERT(MAX(p.valor), CHAR) AS faturamento_maximo,
  CONVERT(ROUND(AVG(p.valor), 2), CHAR) AS faturamento_medio,
  CONVERT(ROUND(SUM(p.valor), 2), CHAR) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
	ON u.plano_id = p.id;
