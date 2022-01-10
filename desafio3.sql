SELECT
    usuario.nome_usuario AS usuario,
    COUNT(historico.cancao_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(cancoes.duracao_cancao/60)) AS total_minutos
FROM SpotifyClone.usuario AS usuario
    INNER JOIN SpotifyClone.historico AS historico
    ON usuario.usuario_id = historico.usuario_id
    INNER JOIN SpotifyClone.cancoes AS cancoes
    ON cancoes.cancao_id = historico.cancao_id
    GROUP BY usuario.nome_usuario
    ORDER BY usuario.nome_usuario;