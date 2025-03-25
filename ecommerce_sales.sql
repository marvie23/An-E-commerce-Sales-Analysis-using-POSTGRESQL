CREATE TABLE ecommerce_sales (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price DECIMAL(10,2),
    review_score DECIMAL(3,1),
    review_count INT,
    sales_month_1 INT,
    sales_month_2 INT,
    sales_month_3 INT,
    sales_month_4 INT,
    sales_month_5 INT,
    sales_month_6 INT,
    sales_month_7 INT,
    sales_month_8 INT,
    sales_month_9 INT,
    sales_month_10 INT,
    sales_month_11 INT,
    sales_month_12 INT
);
**1 Identify Top-Performing Product Categories
SELECT category, 
       SUM(sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + 
           sales_month_5 + sales_month_6 + sales_month_7 + sales_month_8 + 
           sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12) AS total_sales
FROM ecommerce_sales
GROUP BY category
ORDER BY total_sales DESC
LIMIT 10;
**2 Analyze the Impact of Pricing on Sales and Reviews
SELECT 
    price, 
    AVG(review_score) AS avg_review_score, 
    SUM(sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + 
        sales_month_5 + sales_month_6 + sales_month_7 + sales_month_8 + 
        sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12) AS total_sales
FROM ecommerce_sales
GROUP BY price
ORDER BY price;
**3 Seasonal Sales Trends
SELECT 
    'Month 1' AS month, SUM(sales_month_1) AS total_sales FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 2', SUM(sales_month_2) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 3', SUM(sales_month_3) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 4', SUM(sales_month_4) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 5', SUM(sales_month_5) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 6', SUM(sales_month_6) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 7', SUM(sales_month_7) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 8', SUM(sales_month_8) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 9', SUM(sales_month_9) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 10', SUM(sales_month_10) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 11', SUM(sales_month_11) FROM ecommerce_sales
UNION ALL
SELECT 
    'Month 12', SUM(sales_month_12) FROM ecommerce_sales
ORDER BY month;
**4 Customer Satisfaction Based on Review Scores
SELECT category, 
       AVG(review_score) AS avg_review_score, 
       SUM(review_count) AS total_reviews
FROM ecommerce_sales
GROUP BY category
ORDER BY avg_review_score DESC;

