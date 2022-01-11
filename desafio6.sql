SELECT 
  MIN(planos.valor_plano) AS 'faturamento_minimo',
  MAX(planos.valor_plano) AS 'faturamento_maximo',
  CAST((AVG(plans.valor_plano)) AS DECIMAL(4,2)) AS 'faturamento_medio',
  CAST((SUM(plans.valor_plano)) AS DECIMAL(4,2)) AS 'faturamento_total'
FROM
  SpotifyClone.planos AS planos,
  SpotifyClone.usuario AS usuario
WHERE
  planos.plano_id = usuario.plano_id;