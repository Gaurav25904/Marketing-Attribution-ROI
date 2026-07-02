# Filter & Slicer Testing

## Objective

Validate the dashboard filters and slicers to ensure they correctly update the dashboard visuals and KPI cards.

---

## Tested Filters

| Filter | Test Performed | Expected Behavior | Status |
|---------|----------------|-------------------|--------|
| Date Range | Selected different date ranges | KPI cards and charts update based on the selected period | ✅ Passed |
| UTM Source | Selected different marketing channels | Dashboard displays data only for the selected channel | ✅ Passed |
| Campaign | Selected different campaigns | Dashboard visuals and KPI cards update according to the selected campaign | ✅ Passed |

---

## Validation Summary

- Verified that the **Date Range** slicer updates the KPI cards and charts correctly.
- Verified that the **UTM Source** slicer filters dashboard data by the selected marketing channel.
- Verified that the **Campaign** slicer updates the dashboard visuals based on the selected campaign.
- Confirmed that KPI cards (Revenue, Conversions, Clicks, CPC, CAC, and ROAS) refresh correctly after applying filters.
- Confirmed that the **Revenue Trend** chart updates according to the selected filters.
- Confirmed that the **Conversions by Channel** chart displays the filtered results correctly.
- No filtering issues or incorrect values were observed during testing.

---

## Conclusion

The dashboard filters and slicers were successfully validated. All tested filters updated the dashboard visuals and KPI cards correctly, confirming that the dashboard filtering functionality is working as expected.
