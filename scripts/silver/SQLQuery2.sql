-- check for nulls or Duplicate in Primary key
-- Expectation: No Result 

SELECT 
cst_id,
COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL

SELECT DISTINCT
cst_gndr
FROM bronze.crm_cust_info