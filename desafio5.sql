SELECT 
	m.titulo AS cancao,
  COUNT(u_m.usuario_id) AS reproducoes
FROM SpotifyClone.usuario_musica AS u_m
INNER JOIN SpotifyClone.musicas AS m
	ON u_m.musica_id = m.id
GROUP BY u_m.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
