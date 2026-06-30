#CREATE DATABASE marketing_attribution;

USE marketing_attribution;

CREATE TABLE Customer_Journey (
    User_ID VARCHAR(50),
    Timestamp DATETIME,
    UTM_Source VARCHAR(100),
    Campaign VARCHAR(100),
    Converted INT,
    Revenue DECIMAL(10,2),
    Ad_Spend DECIMAL(10,2),
    Clicks INT,
    Impressions INT
);

SHOW TABLES;

DESCRIBE Customer_Journey;

SHOW TABLES;

SELECT COUNT(*) AS total_rows
FROM `cleaned_marketing_dataset (1)`;

SELECT *
FROM `cleaned_marketing_dataset (1)`
LIMIT 10;

SELECT SUM(Revenue) AS total_revenue
FROM `cleaned_marketing_dataset (1)`;

SELECT SUM(Ad_Spend) AS total_ad_spend
FROM `cleaned_marketing_dataset (1)`;

SELECT SUM(Converted) AS total_conversions
FROM `cleaned_marketing_dataset (1)`;

DESCRIBE `cleaned_marketing_dataset (1)`;

USE marketing_attribution;
SELECT
    User_ID,
    COUNT(*) AS Total_Touchpoints
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID
ORDER BY Total_Touchpoints DESC;

SELECT
    User_ID,
    GROUP_CONCAT(UTM_Source ORDER BY Timestamp SEPARATOR ' -> ') AS Journey_Path
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID;

SELECT
    User_ID,
    COUNT(*) AS Total_Touchpoints
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID
ORDER BY Total_Touchpoints DESC;

SELECT
    User_ID,
    MIN(Timestamp) AS First_Interaction
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID;

SELECT
    User_ID,
    MAX(Timestamp) AS Last_Interaction
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID;

SELECT COUNT(DISTINCT User_ID) AS Distinct_Users
FROM `cleaned_marketing_dataset (1)`;

SELECT COUNT(DISTINCT User_ID) AS Converted_Users
FROM `cleaned_marketing_dataset (1)`
WHERE Converted = 1;


SELECT
    ROUND(
        COUNT(DISTINCT CASE WHEN Converted = 1 THEN User_ID END) * 100.0
        / COUNT(DISTINCT User_ID),
        2
    ) AS Conversion_Rate
FROM `cleaned_marketing_dataset (1)`;