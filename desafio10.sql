SELECT
	m.titulo AS nome,
    COUNT(u_m.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.usuario_musica AS u_m
	ON u_m.musica_id = m.id
INNER JOIN SpotifyClone.usuarios as u
	ON u.id = u_m.usuario_id
INNER JOIN SpotifyClone.planos AS p
	ON p.id = u.plano_id
WHERE p.nome IN ('Gratuito', 'Pessoal')
GROUP BY nome;
