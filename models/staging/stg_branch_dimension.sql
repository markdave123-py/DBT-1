{{ config(materialized='view') }}

SELECT
    "BranchID" as branch_id,
    "BranchLocation" as branch_location,
    "ManagerName" as manager_name,
    "BranchType" as branch_type
FROM {{ source('raw_data', 'branch_dimension') }}