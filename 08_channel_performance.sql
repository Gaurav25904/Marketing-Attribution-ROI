USE marketing_attribution;

SELECT
    UTM_Source,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY Total_Revenue DESC;

SELECT
    UTM_Source,
    SUM(Converted) AS Total_Conversions
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY Total_Conversions DESC;

SELECT
    UTM_Source,
    SUM(Clicks) AS Total_Clicks
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY Total_Clicks DESC;

SELECT
    UTM_Source,
    SUM(Impressions) AS Total_Impressions
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY Total_Impressions DESC;

SELECT
    UTM_Source,
    ROUND(SUM(Ad_Spend), 2) AS Total_Ad_Spend
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY Total_Ad_Spend DESC;

SELECT
    UTM_Source,
    ROUND(
        (SUM(Clicks) * 100.0) / SUM(Impressions),
        2
    ) AS CTR_Percentage
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY CTR_Percentage DESC;

SELECT
    UTM_Source,
    ROUND(
        (SUM(Converted) * 100.0) / COUNT(DISTINCT User_ID),
        2
    ) AS Conversion_Rate
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY Conversion_Rate DESC;

SELECT
    UTM_Source,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY ROI_Percentage DESC;