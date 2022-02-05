SELECT
	u.nome AS usuario,
  IF(MAX(YEAR(data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario_musica AS u_m
INNER JOIN SpotifyClone.usuarios AS u
	ON u_m.usuario_id = u.id
GROUP BY usuario
ORDER BY usuario;
