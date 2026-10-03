# Car Sales Dashboard Project

This project is a car sales analysis dashboard built using a raw sales dataset, MySQL data cleaning, and a Power BI dashboard.

## Project Objective

The goal of this project is to clean and prepare car sales data, analyze sales performance by brand, model, region, and city, and build a dashboard that helps in understanding:

- Top-selling car brands
- Regional sales contribution
- Revenue and pricing trends
- Dealer-wise performance
- Sales comparison across the two months in the dataset

## Dataset

The raw dataset is stored in:

- `car_sales_august_2025_2026_raw.csv`

It contains sales records with fields such as:

- Sale_ID
- Month
- Year
- Brand
- Car_Model
- City
- Region
- Units_Sold
- Avg_Price_Lakh
- Discount_Pct
- Revenue_Crore
- Dealer_ID

## Data Cleaning Workflow

The SQL script in:

- `Car Sales Data Cleaning.sql`

performs the following tasks:

1. Creates a database and raw sales table
2. Checks the table structure and row count
3. Identifies duplicate Sale_ID values
4. Finds missing values in key columns
5. Trims whitespace from text fields
6. Creates a cleaned version of the dataset for analysis

The cleaning process ensures the data is ready for reporting and dashboard creation.

## SQL and Dashboard Files

- `Car Sales Data Cleaning.sql` - MySQL script for creating and cleaning the raw dataset
- `car_sales_august_2025_2026_raw.csv` - source/raw dataset
- `Car Sales Dashboard.pbix` - Power BI dashboard file for visual analysis

## Suggested Analysis Questions

- Which brand has the highest units sold?
- Which region contributes the most revenue?
- Which car model is the most popular?
- How do discounts affect sales performance?
- Which cities or dealers perform best?

## Project Workflow

1. Import raw CSV data into MySQL.
2. Run the cleaning SQL script.
3. Validate duplicates and missing values.
4. Use the cleaned table for dashboard building.
5. Visualize trends in Power BI.

## Tools Used

- MySQL
- SQL
- Power BI
- CSV data processing

## Notes

This project is useful for learning data cleaning, exploratory analysis, business reporting, and dashboard design with sales data.

## Future Enhancements

- Add more months and years of data
- Include a year-over-year comparison dashboard
- Add KPI cards and slicers for filters
- Build a more interactive executive summary dashboard
