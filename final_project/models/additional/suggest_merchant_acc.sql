{{
  config(
    materialized='table'
  )
}}

SELECT nameDest, count (*) AS trx
FROM {{ ref('fill_transactionValid') }}
WHERE isFraud=0 
GROUP BY nameDest
ORDER BY trx DESC 
LIMIT 100