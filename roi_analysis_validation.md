# ROI Analysis Validation

## Validation

| Metric | SQL Query | Expected Result | Actual Result |
|--------|-----------|-----------------|--------------:|
| Total Revenue | `SUM(Revenue)` | Sum of all revenue | **341,950** |
| Total Ad Spend | `SUM(Ad_Spend)` | Sum of all advertising spend | **16,489,830** |
| Overall ROI (%) | `((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100` | Overall Return on Investment | **-97.93%** |
| ROI by UTM Source | `GROUP BY UTM_Source` | ROI for each marketing source | **Calculated Successfully** |
| ROI by Campaign | `GROUP BY Campaign` | ROI for each campaign | **Calculated Successfully** |
| Top 5 Campaigns by ROI | `ORDER BY ROI_Percentage DESC LIMIT 5` | Highest ROI campaigns | **Retrieved Successfully** |
| Top UTM Source by ROI | `ORDER BY ROI_Percentage DESC LIMIT 1` | Highest ROI source | **LinkedIn (-97.77%)** |

## Validation Summary

- Verified total revenue using `SUM(Revenue)`.
- Verified total advertising spend using `SUM(Ad_Spend)`.
- Validated overall ROI using:
  ```sql
  ((SUM(Revenue) - SUM(Ad_Spend)) / SUM(Ad_Spend)) * 100
  ```
- Verified ROI calculation by UTM Source using `GROUP BY UTM_Source`.
- Verified ROI calculation by Campaign using `GROUP BY Campaign`.
- Retrieved the top-performing campaigns based on ROI.
- Identified **LinkedIn** as the highest ROI UTM source with **-97.77%** ROI.
- All SQL queries executed successfully and returned the expected results.
