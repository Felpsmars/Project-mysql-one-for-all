SELECT
	artista.nome_artista AS artista,
    albuns.nome_album AS album
FROM
	SpotifyClone.artista AS artista,
    SpotifyClone.albuns AS albuns
WHERE
	artista.artista_id = albuns.artista_id
AND
	artista.nome_artista = 'Walter Phoenix'
ORDER BY album ASC;