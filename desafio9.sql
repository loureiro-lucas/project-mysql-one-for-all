SELECT
	COUNT(*) as quantidade_musicas_no_historico
FROM SpotifyClone.usuario_musica AS u_m
INNER JOIN SpotifyClone.usuarios AS u
	ON u_m.usuario_id = u.id
WHERE u.nome = 'Bill';
