USE marketing_attribution;

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