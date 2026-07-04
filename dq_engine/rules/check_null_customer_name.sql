-- Rule: Check for NULL cusstomer_name values
-- Purpose: Ensure customer_name is always populated fo analytics

SELECT
    COUNT(*) AS null_customer_name_count
FROM 
    customers
WHERE 
    customer_name IS NULL
AND is_active = 1;