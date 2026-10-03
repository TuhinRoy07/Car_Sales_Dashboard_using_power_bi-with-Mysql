create database car_sales_db;
use car_sales_db;

CREATE TABLE car_sales_raw (
    Sale_ID INT,
    Month VARCHAR(20),
    Year INT,
    Brand VARCHAR(50),
    Car_Model VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50),
    Units_Sold INT,
    Avg_Price_Lakh DECIMAL(10,2),
    Discount_Pct DECIMAL(5,2),
    Revenue_Crore DECIMAL(10,2),
    Dealer_ID VARCHAR(20)
);

desc car_sales_raw;

select * from car_sales_raw;

select count(*) from car_sales_raw;

SELECT Sale_ID, COUNT(*) AS duplicate_count
FROM car_sales_raw
GROUP BY Sale_ID
HAVING COUNT(*) > 1;

SELECT * FROM car_sales_raw
WHERE Sale_ID IN (
    SELECT Sale_ID
    FROM car_sales_raw
    GROUP BY Sale_ID
    HAVING COUNT(*) > 1
);

SELECT
    SUM(Sale_ID IS NULL) AS missing_sale_id,
    SUM(Month IS NULL OR TRIM(Month) = '') AS missing_month,
    SUM(Brand IS NULL OR TRIM(Brand) = '') AS missing_brand,
    SUM(Car_Model IS NULL OR TRIM(Car_Model) = '') AS missing_model,
    SUM(City IS NULL OR TRIM(City) = '') AS missing_city,
    SUM(Region IS NULL OR TRIM(Region) = '') AS missing_region,
    SUM(Avg_Price_Lakh IS NULL) AS missing_price,
    SUM(Discount_Pct IS NULL) AS missing_discount,
    SUM(Revenue_Crore IS NULL) AS missing_revenue,
    SUM(Dealer_ID IS NULL OR TRIM(Dealer_ID) = '') AS missing_dealer
FROM car_sales_raw;

UPDATE car_sales_raw
SET
    Month = TRIM(Month),
    Brand = TRIM(Brand),
    Car_Model = TRIM(Car_Model),
    City = TRIM(City),
    Region = TRIM(Region),
    Dealer_ID = TRIM(Dealer_ID);

CREATE TABLE car_sales_clean AS
SELECT
    Sale_ID,
    TRIM(Month) AS Month,
    Year,
    TRIM(Brand) AS Brand,
    TRIM(Car_Model) AS Car_Model,
    TRIM(City) AS City,
    TRIM(Region) AS Region,
    Units_Sold,
    Avg_Price_Lakh,
    Discount_Pct,
    Revenue_Crore,
    TRIM(Dealer_ID) AS Dealer_ID
FROM car_sales_raw;

select * from car_sales_clean;