USE marketing_attribution;

SELECT
    COUNT(DISTINCT User_ID) AS Total_Users
FROM `cleaned_marketing_dataset (1)`;

SELECT
    SUM(Impressions) AS Total_Impressions
FROM `cleaned_marketing_dataset (1)`;

SELECT
    SUM(Clicks) AS Total_Clicks
FROM `cleaned_marketing_dataset (1)`;

SELECT
    SUM(Converted) AS Total_Conversions
FROM `cleaned_marketing_dataset (1)`;

SELECT
    ROUND(
        (SUM(Clicks) * 100.0) / SUM(Impressions),
        2
    ) AS CTR_Percentage
FROM `cleaned_marketing_dataset (1)`;

SELECT
    ROUND(
        (SUM(Converted) * 100.0) / COUNT(DISTINCT User_ID),
        2
    ) AS Conversion_Rate_Percentage
FROM `cleaned_marketing_dataset (1)`;