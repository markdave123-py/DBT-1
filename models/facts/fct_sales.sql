-- models/facts/fct_sales.sql
{{ config(materialized='table') }}

SELECT
    date_key,
    customer_id,
    branch_id,
    product_id,
    sum(total_amount) as total_sales,
    count(*) as transactions_count
FROM {{ ref('stg_sales_fact') }}
GROUP BY date_key, customer_id, branch_id, product_id