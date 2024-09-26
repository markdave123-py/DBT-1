SELECT * FROM {{ ref('fct_sales') }}
WHERE total_sales > 0