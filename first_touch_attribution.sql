use marketing_attribution;

SELECT COUNT(*) FROM `cleaned_marketing_dataset (1)`;

SELECT
    COUNT(DISTINCT User_ID) AS Distinct_Users
FROM `cleaned_marketing_dataset (1)`;

SELECT
    User_ID,
    COUNT(*) AS Touchpoints
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID
ORDER BY Touchpoints DESC
LIMIT 10;

SELECT
    m.User_ID,
    m.UTM_Source AS First_Touch_Channel,
    m.Campaign,
    m.Converted
FROM `cleaned_marketing_dataset (1)` m
JOIN (
    SELECT
        User_ID,
        MIN(Timestamp) AS First_Touch_Time
    FROM `cleaned_marketing_dataset (1)`
    GROUP BY User_ID
) ft
ON m.User_ID = ft.User_ID
AND m.Timestamp = ft.First_Touch_Time;

SELECT
    m.UTM_Source AS First_Touch_Channel,
    COUNT(*) AS Converted_Users
FROM `cleaned_marketing_dataset (1)` m
JOIN (
    SELECT
        User_ID,
        MIN(Timestamp) AS First_Touch_Time
    FROM `cleaned_marketing_dataset (1)`
    GROUP BY User_ID
) ft
ON m.User_ID = ft.User_ID
AND m.Timestamp = ft.First_Touch_Time
WHERE m.Converted = 1
GROUP BY m.UTM_Source
ORDER BY Converted_Users DESC;

