# Online Retail: Customer Behavior & Market Basket Analysis (SQL)

![file](https://github.com/user-attachments/assets/10e1e0de-fb87-4657-ac65-a34170382ff6)

## Project Overview

This project focuses on analyzing transaction data from an online retail platform to investigate customer shopping patterns and product relationships. By leveraging SQL, I analyzed a dataset of over **500,000 entries** to identify high-value customer segments, retention risks, and product affinities through Market Basket Analysis. This analysis is crucial for FMCG companies to optimize their cross-selling strategies and inventory management.

## Dataset Description

The dataset used is `Online_Retail.csv`, which contains historical transaction data. Key columns include:

* **InvoiceNo**: Unique identifier for each transaction.
* **StockCode**: Unique identifier for each product.
* **Description**: Product name.
* **Quantity**: Number of items purchased.
* **InvoiceDate**: Date and time of the transaction.
* **UnitPrice**: Price per unit.
* **CustomerID**: Unique identifier for each customer.
* **Country**: Country where the transaction occurred.

## Tools Used

* **Database Engine**: MySQL Server
* **Interface**: MySQL Workbench
* **Language**: SQL (Structured Query Language)

## SQL Key Features Implemented

* **Self-Joins**: Executed Market Basket Analysis to identify pairs of products frequently purchased together.
* **Data Cleaning**: Filtered out NULL values and anomalous transactions (negative quantities/returns) to ensure data integrity.
* **Advanced Aggregation**: Utilized `COUNT(DISTINCT)`, `SUM()`, and `HAVING` clauses for customer segmentation.

## Business Questions Answered

1. Monetary Distribution (Who are our VIPs?)

* **Insight:** Identified the top-spending customers who contribute disproportionately to total revenue.
* **Action:** Allows for the creation of exclusive loyalty programs for high-value segments to maximize retention.

| CuctomerID | TotalSpent |
|------------|------------|
| Total      | 424774.28  |
| 12346      | 77183.6    |
| 18102      | 38370.09   |
| 14646      | 36374.84   |
| 14156      | 24272.05   |
| 15749      | 22998.4    |
| 15061      | 22671.33   |
| 12415      | 21115.9    |
| 17450      | 20649.04   |
| 16029      | 18884.43   |

2. Product Diversity (Basket Depth)

* **Insight:** Measured the number of unique product categories purchased by each customer.
* **Action:** Helps identify "specialized" shoppers vs. "general" shoppers, enabling more personalized cross-category recommendations.

| CuctomerID | UniqueItems |
|------------|-------------|
|            | 2431        |
| 12748      | 524         |
| 14606      | 387         |
| 14911      | 385         |
| 17841      | 348         |
| 13089      | 289         |
| 15311      | 279         |
| 14156      | 254         |
| 14298      | 247         |
| 18118      | 235         |

3. Customer Churn Risk (One-Time Buyers)

* **Insight:** Isolated a large group of customers who only made a single purchase.
* **Action:** This group is the primary target for "Win-back" campaigns and first-time-buyer incentives to increase the conversion to repeat customers.

| CuctomerID | OrderCount |
|------------|------------|
| 12346      | 1          |
| 12350      | 1          |
| 12352      | 1          |
| 12356      | 1          |
| 12362      | 1          |
| 12372      | 1          |
| 12373      | 1          |
| 12401      | 1          |
| 12402      | 1          |
| 12413      | 1          |

4. Market Basket Analysis (Affinity Groups)

* **Insight:** Using **Self-Joins**, I identified pairs of products that are most frequently purchased together in the same transaction.
* **Action:** Directly informs "Bundle Deals" (Buy A, Get B at 10% off) and strategic shelf placement in physical or digital storefronts.

| Product A                         | Product B                          | Frequency |
|-----------------------------------|------------------------------------|-----------|
| HEART OF WICKER SMALL             | HEART OF WICKER LARGE              | 185       |
| HEART OF WICKER SMALL             | WHITE HANGING HEART T-LIGHT HOLDER | 144       |
| RED HANGING HEART T-LIGHT HOLDER  | WHITE HANGING HEART T-LIGHT HOLDER | 140       |
| ALARM CLOCK BAKELIKE GREEN        | ALARM CLOCK BAKELIKE RED           | 138       |
| SET OF 3 CAKE TINS PANTRY DESIGN  | SET OF 6 SPICE TINS PANTRY DESIGN  | 136       |
| HEART OF WICKER LARGE             | WHITE HANGING HEART T-LIGHT HOLDER | 131       |
| JAM MAKING SET WITH JARS          | JAM MAKING SET PRINTED             | 129       |
| GREEN REGENCY TEACUP AND SAUCER   | ROSES REGENCY TEACUP AND SAUCER    | 129       |
| HOME BUILDING BLOCK WORD          | LOVE BUILDING BLOCK WORD           | 124       |
| NATURAL SLATE HEART CHALKBOARD    | HEART OF WICKER SMALL              | 122       |
