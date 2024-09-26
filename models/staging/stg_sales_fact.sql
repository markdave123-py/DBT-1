-- models/staging/stg_sales_fact.sql
{{ config(materialized='view') }}

SELECT
    "TransactionID" as transaction_id,
    "DateKey" as date_key,
    "CustomerID" as customer_id,
    "BranchID" as branch_id,
    "ProductID" as product_id,
    "PaymentMethodID" as payment_method_id,
    "OrderType" as order_type,
    "Quantity" as quantity,
    "TotalAmount" as total_amount,
    "DiscountAmount" as discount_amount,
    "Revenue" as revenue
FROM {{ source('raw_data', 'sales_fact') }}