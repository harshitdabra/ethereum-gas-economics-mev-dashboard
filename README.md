# Ethereum Gas Economics & MEV Dashboard

Dune Analytics queries covering EIP-1559 base fee burn, network gas utilization, block builder and MEV concentration, and transaction type evolution on Ethereum mainnet.

Live dashboard: https://dune.com/harshit_dabra/ethereum-gas-economics-and-mev-dashboard

## Queries

`01_eip1559_base_fee_burn.sql` tracks daily ETH burned via EIP-1559 base fee, average base fee in gwei, and average gas used per block over the last 90 days.

`02_network_gas_utilization.sql` computes daily gas utilization as a percentage of the block gas limit over the last 90 days.

`03_block_builder_mev_concentration.sql` ranks the top 15 block builders and fee recipients by blocks won over the last 30 days.

`04_transaction_type_mix.sql` breaks down Ethereum transaction types (Legacy, EIP-1559, EIP-2930, Blob, EIP-7702) over the last 90 days.

## Notes

Built with DuneSQL against `ethereum.blocks` and `ethereum.transactions`. Builder and fee recipient addresses are not resolved to entity names. This dashboard is for informational and educational purposes only and is not financial advice.

## About

Built by Harshit Dabra.
