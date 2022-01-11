SELECT
	usuario.nome_usuario AS usuario,
(CASE
	WHEN MAX(YEAR(historico.data_reproducao)) = 2021
	THEN 'Usuário ativa'
	ELSE 'Usuário inativo'
END) AS condicao_usuario
FROM
	SpotifyClone.usuario AS usuario,
    SpotifyClone.historico AS historico
WHERE usuario.usuario_id = historico.usuario_id
GROUP BY usuario.nome_usuario
ORDER BY usuario.nome_usuario;