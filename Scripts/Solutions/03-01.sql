WITH common AS (
  SELECT STRFTIME('%Y', soldDate) AS year, salesAmount
  FROM sales
)

SELECT year, FORMAT('$%.2f', SUM(salesAmount)) AS volume
FROM common
GROUP BY year;