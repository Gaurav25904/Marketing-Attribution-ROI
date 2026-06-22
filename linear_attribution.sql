USE marketing_attribution;

SELECT
    User_ID,
    COUNT(*) AS Total_Touchpoints
FROM `cleaned_marketing_dataset (1)`
GROUP BY User_ID;

SELECT
    User_ID,
    UTM_Source,
    Campaign,
    Converted,
    ROUND(
        1.0 / COUNT(*) OVER(PARTITION BY User_ID),
        4
    ) AS Attribution_Credit
FROM `cleaned_marketing_dataset (1)`;

USE marketing_attribution;

WITH touchpoint_counts AS (
    SELECT
        User_ID,
        COUNT(*) AS Total_Touchpoints
    FROM `cleaned_marketing_dataset (1)`
    WHERE Converted = 1
    GROUP BY User_ID
)

SELECT
    m.UTM_Source,
    ROUND(
        SUM(1.0 / tc.Total_Touchpoints),
        2
    ) AS Attribution_Credit
FROM `cleaned_marketing_dataset (1)` m
JOIN touchpoint_counts tc
    ON m.User_ID = tc.User_ID
WHERE m.Converted = 1
GROUP BY m.UTM_Source
ORDER BY Attribution_Credit DESC;