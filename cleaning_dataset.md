Cleaning notes
Data Cleaning Actions:
1. Handling Missing Values
User_ID: Missing values handled using appropriate strategy (removed or imputed based on analysis needs).
Timestamp: Converted to datetime format and missing values filled using median timestamp.
UTM_Source: Missing values replaced with "Unknown" to preserve data integrity.
2. Removing Duplicates
Identified duplicate rows and removed them to ensure data accuracy and avoid redundancy.
3. Data Type Conversion
Converted Timestamp column into proper datetime format for time-based analysis.
4. Resetting Index
Index was reset after cleaning for proper data structure.
