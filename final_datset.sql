CREATE DATABASE marketing_attribution;
USE marketing_attribution;
SHOW TABLES;
USE marketing_attribution;
SELECT * FROM cleaned_marketing_dataset LIMIT 5;
USE marketing_attribution;
-- Final Dataset query
SELECT 
    User_ID,
    Campaign,
    
    SUM(Converted) AS total_conversions,
    
    SUM(Revenue) AS total_revenue,
    
    SUM(Ad_Spend) AS total_spend,
    
    SUM(Clicks) AS total_clicks,
    
    SUM(Impressions) AS total_impressions

FROM `marketing_attribution`.`cleaned_marketing_dataset`

GROUP BY User_ID, Campaign

ORDER BY total_revenue DESC;
