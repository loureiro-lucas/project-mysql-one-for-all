SELECT
	art.nome AS artista,
	alb.titulo AS album,
	COUNT(u_a.artista_id) AS seguidores
FROM SpotifyClone.usuario_artista AS u_a
INNER JOIN SpotifyClone.artistas AS art
	ON u_a.artista_id = art.id
INNER JOIN SpotifyClone.albuns AS alb
	ON art.id = alb.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, artista ASC;
