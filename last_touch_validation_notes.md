# Last-Touch Attribution Validation Notes

## Objective
Validate the Last-Touch Attribution output generated using SQL.

## Validation Checks

### 1. Last Interaction Selection
- Verified that the query uses MAX(Timestamp) to identify the latest touchpoint for each user.
- Confirmed that the Last-Touch Attribution methodology is implemented correctly.

### 2. Unique User Attribution
- Verified that each user is assigned to a single last-touch channel.
- No duplicate attribution records were observed.

### 3. Conversion Attribution
- Confirmed that only converted users (Converted = 1) are included in the conversion attribution calculation.
- Conversion credit is assigned to the user's final marketing touchpoint.

### 4. Revenue Attribution
- Verified that revenue is attributed to the last-touch channel.
- Revenue calculations are performed only for converted users.

## Key Observations

- The Last-Touch Attribution model was implemented correctly using MAX(Timestamp).
- The final recorded UTM source receives attribution credit.
- LinkedIn generated the highest number of converted users (67).
- Facebook generated 65 converted users.
- Blog generated 64 converted users.
- Google generated 58 converted users.
- TikTok generated 52 converted users.
- Unknown generated 16 converted users.
- User-level attribution is maintained without duplication.

## Conclusion

The Last-Touch Attribution SQL implementation was reviewed and validated successfully. The attribution logic correctly assigns conversion and revenue credit to the final marketing touchpoint based on the latest recorded user interaction.
