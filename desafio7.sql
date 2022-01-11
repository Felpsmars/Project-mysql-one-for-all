SELECT
	artista.nome_artista AS artista,
	albuns.nome_album AS album,
	COUNT(seguidores.artista_id) AS seguidores
FROM 
	SpotifyClone.artista AS artista,
	SpotifyClone.albuns AS albuns,
	SpotifyClone.seguidores AS seguidores
WHERE
	artista.artista_id = albuns.artista_id
AND
	albuns.artista_id = seguidores.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;