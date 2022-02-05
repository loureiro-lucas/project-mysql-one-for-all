SELECT 
	m.titulo AS cancoes,
  COUNT(*) AS reproducoes
FROM SpotifyClone.usuario_musica AS m_u
INNER JOIN SpotifyClone.musicas AS m
	ON m_u.musica_id = m.id
GROUP BY m_u.musica_id
ORDER BY reproducoes DESC, cancoes ASC
LIMIT 2;
