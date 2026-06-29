USE marketing_attribution;

SELECT
    ROUND(SUM(Revenue),2) AS Total_Revenue,
    ROUND(SUM(Ad_Spend),2) AS Total_Ad_Spend
FROM `cleaned_marketing_dataset (1)`;

SELECT
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM `cleaned_marketing_dataset (1)`;

SELECT
    UTM_Source,
    ROUND(SUM(Revenue),2) AS Revenue,
    ROUND(SUM(Ad_Spend),2) AS Ad_Spend,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY ROI_Percentage DESC;

SELECT
    Campaign,
    ROUND(SUM(Revenue),2) AS Revenue,
    ROUND(SUM(Ad_Spend),2) AS Ad_Spend,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM `cleaned_marketing_dataset (1)`
GROUP BY Campaign
ORDER BY ROI_Percentage DESC;

SELECT
    UTM_Source,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM `cleaned_marketing_dataset (1)`
GROUP BY UTM_Source
ORDER BY ROI_Percentage DESC
LIMIT 1;

SELECT
    Campaign,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM `cleaned_marketing_dataset (1)`
GROUP BY Campaign
ORDER BY ROI_Percentage DESC
LIMIT 5;