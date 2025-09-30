use sql1;
show tables;
select * from online_sales;
SELECT EXTRACT(MONTH FROM Date) AS Sales_Month FROM online_sales;
SELECT 
    YEAR(Date) AS Sales_Year,
    MONTH(Date) AS Sales_Month,
    SUM(`Total Revenue`) AS Total_Revenue,
    COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM online_sales
WHERE Date >= '2024-03-01' 
  AND Date < '2024-04-01'
GROUP BY Sales_Year, Sales_Month
ORDER BY Sales_Year ASC, Sales_Month ASC;
