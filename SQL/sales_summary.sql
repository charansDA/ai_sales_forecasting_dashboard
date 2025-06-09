SELECT 
    Region,
    Sales_Channel,
    SUM(Revenue) AS Total_Revenue,
    SUM(Units_Sold) AS Total_Units,
    COUNT(*) AS Records,
    SUM(CASE WHEN Compliance_Flag = 'Yes' THEN 1 ELSE 0 END) AS Compliance_Issues
FROM sales_data_comcast
GROUP BY Region, Sales_Channel
ORDER BY Total_Revenue DESC;
