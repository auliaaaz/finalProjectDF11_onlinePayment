{{
  config(
    materialized='table'
  )
}}

SELECT payment_id, isFraud, payment_datetime
FROM {{ ref('fill_transactionValid') }}