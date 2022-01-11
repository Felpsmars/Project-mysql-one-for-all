SELECT 
	cancoes.nome_cancao AS cancao,
    COUNT(historico.cancao_id) AS reproducoes
FROM
	SpotifyClone.cancoes AS cancoes,
    SpotifyClone.historico as historico
WHERE cancoes.cancao_id = historico.cancao_id
GROUP BY cancoes.nome_cancao
ORDER BY reproducoes DESC, cancoes.nome_cancao
LIMIT 2;