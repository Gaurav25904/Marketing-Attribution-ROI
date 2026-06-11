CREATE DATABASE marketing_attribution;

USE marketing_attribution;

CREATE TABLE Customer_Journey (
    User_ID VARCHAR(50),
    Timestamp DATETIME,
    UTM_Source VARCHAR(100),
    Campaign VARCHAR(100),
    Converted INT,
    Revenue DECIMAL(10,2),
    Ad_Spend DECIMAL(10,2),
    Clicks INT,
    Impressions INT
);

SHOW TABLES;

DESCRIBE Customer_Journey;
