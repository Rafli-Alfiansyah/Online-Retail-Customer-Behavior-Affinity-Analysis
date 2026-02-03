-- Create a clean view for analysis
CREATE VIEW clean_retail AS
SELECT * FROM retail_data
WHERE CustomerID IS NOT NULL 
  AND Quantity > 0 
  AND UnitPrice > 0;
  
SELECT CustomerID, ROUND(SUM(Quantity * UnitPrice), 2) AS TotalSpent
FROM clean_retail
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10;

SELECT CustomerID, COUNT(DISTINCT StockCode) AS UniqueItems
FROM clean_retail
GROUP BY CustomerID
ORDER BY UniqueItems DESC
LIMIT 10;

SELECT CustomerID, COUNT(DISTINCT InvoiceNo) AS OrderCount
FROM clean_retail
GROUP BY CustomerID
HAVING OrderCount = 1
LIMIT 10;

SELECT 
    a.Description AS Product_A, 
    b.Description AS Product_B, 
    COUNT(*) AS Frequency
FROM clean_retail a
JOIN clean_retail b ON a.InvoiceNo = b.InvoiceNo 
    AND a.StockCode < b.StockCode
WHERE a.Country = 'United Kingdom'
GROUP BY Product_A, Product_B
ORDER BY Frequency DESC
LIMIT 10;