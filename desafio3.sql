SELECT
	u.nome AS usuario,
    COUNT(u_m.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(m.duracao_segundos)/60, 2) AS total_minutos
FROM SpotifyClone.usuario_musica AS u_m
INNER JOIN SpotifyClone.usuarios AS u
	ON u_m.usuario_id = u.id
INNER JOIN SpotifyClone.musicas AS m
	ON u_m.musica_id = m.id
GROUP BY usuario;
