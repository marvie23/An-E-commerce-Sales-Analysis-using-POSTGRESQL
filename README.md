# An-E-commerce-Sales-Analysis-using-POSTGRESQL
##  Introduction
This project focuses on analyzing an **E-commerce Sales** dataset using PostgreSQL to uncover valuable insights. The objective is to identify key sales trends, customer purchasing behavior, and product performance to assist stakeholders in making informed decisions.

##  Dataset Description
The dataset consists of sales transactions from an online e-commerce platform. It includes the following key attributes:

- **Order ID**: Unique identifier for each transaction.
- **Product Category**: The category of the purchased product.
- **Price**: The cost of the product.
- **Quantity**: Number of units sold per transaction.
- **Total Sales**: Revenue generated per transaction.
- **Order Date**: Date of the purchase.
- **Customer Region**: Location of the customer.
- **Payment Method**: Payment option used by the customer.

##  Business Questions
This analysis aims to answer the following business questions:
1. What are the top-performing products and categories?
2. How do sales trends change over time?
3. Which regions contribute the most to revenue?
4. What are the preferred payment methods among customers?
5. Are there any seasonal sales patterns?

## 📊 Methodology
The analysis followed these steps:
1. **Data Cleaning**: Removed duplicates, handled missing values, and standardized date formats.
2. **Exploratory Data Analysis (EDA)**: Used SQL queries to explore key trends and patterns.
3. **Aggregation & Computation**: Performed calculations to determine total sales, revenue contribution, and trends.
4. **Visualization (if applicable)**: Used Power BI to create dashboards for a more visual representation of insights.

## 🛠️ Technologies Used
- **PostgreSQL**: Data storage and query execution.

## 📈 Results & Insights
1. **Top-Performing Categories:**  
   - The highest sales were recorded in the **Books (938,229 sales)**, **Toys (917,101 sales)**, and **Sports (916,371 sales)** categories.  
   - These categories contribute significantly to total revenue, suggesting high customer demand.

2. **Best-Selling Products:**  
   - The top-performing products include **Product_224 (Electronics, 9,151 sales)**, **Product_286 (Clothing, 8,921 sales)**, and **Product_734 (Health, 8,914 sales)**.  
   - These products likely drive profitability and should be prioritized in stock replenishment.

3. **Worst-Performing Products:**  
   - The least-selling products include **Product_123 (Health, 2,972 sales)**, **Product_692 (Toys, 3,162 sales)**, and **Product_786 (Books, 3,286 sales)**.  
   - These may need re-evaluation for pricing, marketing, or inventory decisions.

4. **Customer Ratings & Reviews:**  
   - The **Electronics (3.14 avg. review score)** and **Books (3.10 avg. review score)** categories received the highest average customer ratings.  
   - **Toys had the lowest review scores (2.87)**, indicating potential quality concerns or unmet customer expectations.

5. **Seasonal Sales Trends:**  
   - Sales remain relatively stable throughout the year, ranging between **487K and 514K per month**.  
   - The highest sales were recorded in **October (514,798 sales)**, possibly due to seasonal promotions or pre-holiday shopping trends.  
   - The lowest sales were in **May (487,194 sales)**, suggesting a potential dip in customer demand.

## 📌 Conclusion & Next Steps
This analysis provides valuable insights into sales performance and customer preferences. Future enhancements may include:
- Integrating customer demographics for deeper insights.
- Predictive analytics for sales forecasting.
- Optimization of marketing strategies based on purchasing behavior.
