use marketing_attribution;

SHOW TABLES;
DESCRIBE `cleaned_marketing_dataset (1)`;

WITH converted_users AS (
    SELECT DISTINCT User_ID
    FROM `cleaned_marketing_dataset (1)`
    WHERE Converted = 1
),

last_touch AS (
    SELECT
        User_ID,
        UTM_Source,
        Timestamp,
        ROW_NUMBER() OVER (
            PARTITION BY User_ID
            ORDER BY Timestamp DESC
        ) AS rn
    FROM `cleaned_marketing_dataset (1)`
    WHERE User_ID IN (
        SELECT User_ID
        FROM converted_users
    )
)

SELECT
    User_ID,
    UTM_Source AS last_touch_channel,
    Timestamp AS last_touch_time
FROM last_touch
WHERE rn = 1;