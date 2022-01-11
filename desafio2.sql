SELECT
    COUNT(DISTINCT cancoes.cancao_id) AS cancoes,
    COUNT(DISTINCT artista.artista_id) AS artistas,
    COUNT(DISTINCT albuns.album_id) AS albuns
FROM SpotifyClone.cancoes as cancoes
    INNER JOIN SpotifyClone.artista AS artista
    INNER JOIN SpotifyClone.albuns AS albuns;