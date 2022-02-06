SELECT
	art.nome AS artista,
    alb.titulo AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
	ON alb.artista_id = art.id
WHERE art.nome = 'Walter Phoenix'
ORDER BY album ASC;
