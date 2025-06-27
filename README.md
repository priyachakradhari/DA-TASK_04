

## SQL Data Analysis – README

###  Project Overview

This project performs data analysis on two datasets:

* **customer\_data** – Contains customer demographics, purchase behavior, preferences, and transaction details.
* **E\_commerce\_sales\_Data** – Captures user interactions with products such as clicks, purchases, and timestamps.

The objective is to derive insights from this data using **SQL** for analytical reporting and decision-making.

---

###  Tools Used

* **SQL (MySQL)** – For querying and analyzing data
* **DBMS** – MySQL Workbench / pgAdmin / SQLite browser

---

### Dataset Details

#### `customer_data` columns:

* Customer demographics: `Age`, `Gender`, `Location`, etc.
* Purchase metrics: `Purchase Amount (USD)`, `Discount Applied`, `Shipping Type`
* Behavioral data: `Review Rating`, `Frequency of Purchases`, `Subscription Status`

#### `E_commerce_sales_Data` columns:

* `user id`, `product id`, `Interaction type`, `Time stamp`

---

###  Key SQL Concepts Used

* `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY` – For data filtering and aggregation
* **Aggregate Functions** – `SUM`, `AVG`, `COUNT` for trend analysis
* **JOINS** – Merging customer and sales data for combined insights
* **Subqueries** – For conditional comparisons like average spenders
* **Views** – Created for reusable summarized reports
* **Indexes** – Suggested to optimize join and filter performance

---

###  Sample Insights

* Identify high-spending customers by gender and shipping type
* Track user-product interaction history
* Compare customer purchases against average purchase value
* Find customers who have never interacted with any product

---

### Deliverables

* SQL queries (`.sql` file)
* Screenshots of output from query execution
* Optional: `.csv` or `.xlsx` export for visualization in Power BI or Excel
