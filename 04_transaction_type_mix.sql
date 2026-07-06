SELECT
  date_trunc('day', block_time) AS day,
    SUM(CASE WHEN type = 'Legacy' THEN 1 ELSE 0 END) AS legacy_tx_count,
      SUM(CASE WHEN type = 'DynamicFee' THEN 1 ELSE 0 END) AS eip1559_tx_count,
        SUM(CASE WHEN type = 'AccessList' THEN 1 ELSE 0 END) AS eip2930_tx_count,
          SUM(CASE WHEN type = '3' THEN 1 ELSE 0 END) AS blob_tx_count,
            SUM(CASE WHEN type = 'EIP-7702' THEN 1 ELSE 0 END) AS eip7702_tx_count,
              COUNT(*) AS total_tx_count
              FROM ethereum.transactions
              WHERE block_time > now() - interval '90' day
              GROUP BY 1
              ORDER BY 1
