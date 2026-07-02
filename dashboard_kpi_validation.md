# Dashboard KPI Validation 

## Objective
Validate dashboard KPIs and verify that calculations are accurate.

## Validated KPIs

| KPI | Formula | Result | Status |
|------|---------|--------|--------|
| Revenue | SUM(Revenue) | ₹341,950 | ✅ Valid |
| Ad Spend | SUM(Ad_Spend) | ₹16,489,830 | ✅ Valid |
| Clicks | SUM(Clicks) | 983,806 | ✅ Valid |
| Conversions | SUM(Converted) | 736 | ✅ Valid |
| CPC | Ad Spend ÷ Clicks | ₹16.76 | ✅ Valid |
| CAC (CPA) | Ad Spend ÷ Converted | ₹22,404.66 | ✅ Valid |
| ROAS | Revenue ÷ Ad Spend | 2.07% | ✅ Valid |

## Validation Notes

- Verified KPI calculations using DAX measures.
- Confirmed CPC, CAC, and ROAS values match manual calculations.
-  SQL vs dashboard values aligned
- Dashboard KPI cards display the expected values.

 ## Conclusion

The dashboard KPIs were reviewed and validated successfully. The displayed values are accurate and consistent with the project calculations, making the dashboard ready for further testing and analysis.
