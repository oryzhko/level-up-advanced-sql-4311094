-- Get all sales, even with missing customer data

SELECT sls.salesId, sls.salesAmount, sls.soldDate, cus.firstName, cus.lastName 
FROM sales sls
FULL OUTER JOIN customer cus
    ON cus.customerId = sls.customerId;