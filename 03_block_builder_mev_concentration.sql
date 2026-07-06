SELECT
  miner AS fee_recipient,
    COUNT(*) AS blocks_won,
      SUM(gas_used * base_fee_per_gas) / 1e18 AS total_base_fee_eth
      FROM ethereum.blocks
      WHERE time > now() - interval '30' day
      GROUP BY 1
      ORDER BY blocks_won DESC
      LIMIT 15
