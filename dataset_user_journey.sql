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