SELECT
  date_trunc('day', time) AS day,
    SUM(base_fee_per_gas * gas_used) / 1e18 AS eth_burned,
      AVG(base_fee_per_gas) / 1e9 AS avg_base_fee_gwei,
        AVG(gas_used) AS avg_gas_used_per_block
        FROM ethereum.blocks
        WHERE time > now() - interval '90' day
        GROUP BY 1
        ORDER BY 1
