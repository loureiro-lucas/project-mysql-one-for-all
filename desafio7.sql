SELECT
	art.nome AS artista,
	alb.titulo AS album,
	COUNT(u_a.artista_id) AS seguidores
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.albuns AS alb
	ON alb.artista_id = art.id
INNER JOIN SpotifyClone.usuario_artista AS u_a
	ON u_a.artista_id = art.id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;
