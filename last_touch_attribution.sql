USE marketing_attribution;

SELECT
    User_ID,
    MAX(Timestamp) AS Last_Touch_Time
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID;

SELECT
    m.User_ID,
    m.UTM_Source AS Last_Touch_Channel,
    m.Campaign,
    m.Converted
FROM `cleaned_marketing_dataset (1)` m
JOIN (
    SELECT
        User_ID,
        MAX(Timestamp) AS Last_Touch_Time
    FROM `cleaned_marketing_dataset (1)`
    GROUP BY User_ID
) lt
ON m.User_ID = lt.User_ID
AND m.Timestamp = lt.Last_Touch_Time;

#Calculate Conversion Credit by Channel
SELECT
    m.UTM_Source AS Last_Touch_Channel,
    COUNT(*) AS Converted_Users
FROM `cleaned_marketing_dataset (1)` m
JOIN (
    SELECT
        User_ID,
        MAX(Timestamp) AS Last_Touch_Time
    FROM `cleaned_marketing_dataset (1)`
    GROUP BY User_ID
) lt
ON m.User_ID = lt.User_ID
AND m.Timestamp = lt.Last_Touch_Time
WHERE m.Converted = 1
GROUP BY m.UTM_Source
ORDER BY Converted_Users DESC;

#Revenue Attribution by Last Touch
SELECT
    m.UTM_Source AS Last_Touch_Channel,
    SUM(m.Revenue) AS Attributed_Revenue
FROM `cleaned_marketing_dataset (1)` m
JOIN (
    SELECT
        User_ID,
        MAX(Timestamp) AS Last_Touch_Time
    FROM `cleaned_marketing_dataset (1)`
    GROUP BY User_ID
) lt
ON m.User_ID = lt.User_ID
AND m.Timestamp = lt.Last_Touch_Time
WHERE m.Converted = 1
GROUP BY m.UTM_Source
ORDER BY Attributed_Revenue DESC;