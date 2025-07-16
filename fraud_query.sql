
-- Fraud count by hour
SELECT FLOOR(Time / 3600) AS Hour,
       COUNT(*) AS Total_Transactions,
       SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS Fraud_Transactions
FROM Transactions
GROUP BY FLOOR(Time / 3600)
ORDER BY Hour;
