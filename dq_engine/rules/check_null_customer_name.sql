-- Rule: Check for NULL cusstomer_name values
-- Purpose: Ensure customer_name is always populated fo analytics

SELECT
    COUNT(*) AS null_customer_name_count,
    COUNT(*)*1.0 / (SELECT COUNT(*) FROM customers) AS null_customer_name_percentage
FROM 
    customers
WHERE 
    customer_name IS NULL
AND is_active = 1;