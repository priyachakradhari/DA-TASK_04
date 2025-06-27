create database ECOMM;

select * from customer_details;
show columns from customer_details;
show columns from e_commerece_sales_data;

-- 1. Get all female customers who made purchases above $100, ordered by purchase amount
SELECT CustomerID, Gender, Purchase_Amount_usd
FROM customer_details
WHERE Gender = 'Female' AND Purchase_Amount_usd > 10
ORDER BY Purchase_Amount_usd desc;

-- 2. Average purchase amount by gender
SELECT Gender, AVG(Purchase_Amount_usd) AS avg_purchase
FROM customer_details
GROUP BY Gender;

-- 3. INNER JOIN (Customer data + Sales Data)
SELECT c.CustomerID, e.product_id, e.Interaction_type, e.Time_stamp
FROM customer_details c
INNER JOIN E_commerece_sales_Data e
    ON c.CustomerID = e.user_id;

-- 4. Find customers who haven't interacted with any product
SELECT c.CustomerID, c.Gender, c.Purchase_Amount_usd
FROM customer_details c
LEFT JOIN E_commerece_sales_Data e
    ON c.CustomerID = e.user_id
WHERE e.user_id IS NULL;

-- 5. Find customers who have a higher purchase amount than the average
SELECT CustomerID, Purchase_Amount_usd
FROM customer_details
WHERE Purchase_Amount_usd > (
    SELECT AVG(Purchase_Amount_usd) FROM customer_details
);

-- Create view
CREATE VIEW customer_summary AS
SELECT Gender, Shipping_Type, COUNT(*) AS total_orders, AVG(Purchase_Amount_usd) AS avg_order_value
FROM customer_details
GROUP BY Gender, Shipping_Type;



-- Optional: Create index for faster joins and filtering
CREATE INDEX idx_customer_id ON customer_details(CustomerID);
CREATE INDEX idx_user_id ON E_commerece_sales_Data(user_id);


