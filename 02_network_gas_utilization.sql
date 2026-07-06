SELECT
  date_trunc('day', time) AS day,
    AVG(gas_used) AS avg_gas_used,
      AVG(gas_limit) AS avg_gas_limit,
        AVG(gas_used * 100.0 / gas_limit) AS avg_utilization_pct
        FROM ethereum.blocks
        WHERE time > now() - interval '90' day
        GROUP BY 1
        ORDER BY 1
