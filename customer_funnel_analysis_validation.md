# Customer Funnel Analysis Validation

## Validation

| Metric | SQL Query | Expected Result | Actual Result |
|--------|-----------|-----------------|--------------:|
| Total Users | `COUNT(DISTINCT User_ID)` | Count unique users | **1,197** |
| Total Impressions | `SUM(Impressions)` | Sum of all impressions | **37,676,809** |
| Total Clicks | `SUM(Clicks)` | Sum of all clicks | **983,806** |
| Total Conversions | `SUM(Converted)` | Total converted users | **736** |
| CTR (%) | `(SUM(Clicks) * 100) / SUM(Impressions)` | Click-through rate | **2.61%** |
| Conversion Rate (%) | `(SUM(Converted) * 100) / COUNT(DISTINCT User_ID)` | Conversion rate | **61.49%** |

## Validation Summary

- Verified total unique users using `COUNT(DISTINCT User_ID)`.
- Verified total impressions using `SUM(Impressions)`.
- Verified total clicks using `SUM(Clicks)`.
- Verified total conversions using `SUM(Converted)`.
- Validated CTR using:
  ```sql
  (SUM(Clicks) * 100.0) / SUM(Impressions)
  ```
- Validated Conversion Rate using:
  ```sql
  (SUM(Converted) * 100.0) / COUNT(DISTINCT User_ID)
  ```
- All SQL queries executed successfully and returned the expected results.
