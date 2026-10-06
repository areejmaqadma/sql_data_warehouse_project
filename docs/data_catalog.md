# Data Catalog — Gold Layer
 
## Overview
The Gold Layer is the business-level data representation, structured to support analytical and reporting use cases. 
It consists of **dimension tables** and **fact tables** for specific business metrics, modeled as a **star schema**.
 
---
 
## 1. `gold.dim_customers`
**Purpose:** Stores customer details enriched with demographic and geographic data.
 
| Column Name | Data Type | Description |
|---|---|---|
| `customer_key` | INT | Surrogate key uniquely identifying each customer record in the dimension table. |
| `customer_id` | INT | Unique numerical identifier assigned to each customer (source system ID). |
| `customer_number` | NVARCHAR(50) | Alphanumeric identifier used to track the customer across systems. |
| `first_name` | NVARCHAR(50) | Customer's first name. |
| `last_name` | NVARCHAR(50) | Customer's last name or family name. |
| `country` | NVARCHAR(50) | Customer's country of residence (e.g., 'Australia'). |
| `marital_status` | NVARCHAR(50) | Customer's marital status (e.g., 'Married', 'Single'). |
| `gender` | NVARCHAR(50) | Customer's gender (e.g., 'Male', 'Female', 'n/a'). |
| `birthday` | DATE | Customer's date of birth, formatted as YYYY-MM-DD. |
| `create_date` | DATE | Date the customer record was first created in the source system. |
 
---
 
## 2. `gold.dim_products`
**Purpose:** Provides information about products and their attributes.
 
| Column Name | Data Type | Description |
|---|---|---|
| `product_key` | INT | Surrogate key uniquely identifying each product record in the dimension table. |
| `product_id` | INT | Unique identifier assigned to the product (source system ID). |
| `product_number` | NVARCHAR(50) | Alphanumeric code representing the product, used for categorization or inventory. |
| `product_name` | NVARCHAR(50) | Descriptive name of the product, including key details (type, color, size). |
| `category_id` | NVARCHAR(50) | Identifier for the product's category, linking to its high-level classification. |
| `category` | NVARCHAR(50) | Broader classification of the product (e.g., Bikes, Components). |
| `subcategory` | NVARCHAR(50) | More detailed classification within the category. |
| `maintenance` | NVARCHAR(50) | Indicates whether the product requires maintenance (e.g., 'Yes', 'No'). |
| `cost` | INT | Cost or base price of the product, in whole currency units. |
| `product_line` | NVARCHAR(50) | Product series or line (e.g., Road, Mountain). |
| `start_date` | DATE | Date the product became available for sale. |
 
---
 
## 3. `gold.fact_sales`
**Purpose:** Stores transactional sales data for analytical purposes.
 
| Column Name | Data Type | Description |
|---|---|---|
| `order_number` | NVARCHAR(50) | Unique alphanumeric identifier for each sales order. |
| `product_key` | INT | Foreign key linking to `gold.dim_products`. |
| `customer_key` | INT | Foreign key linking to `gold.dim_customers`. |
| `order_date` | DATE | Date the order was placed. |
| `shipping_date` | DATE | Date the order was shipped to the customer. |
| `due_date` | DATE | Date the order payment was due. |
| `sales_amount` | INT | Total monetary value of the sale for the line item, in whole currency units. |
| `quantity` | INT | Number of units ordered for the line item. |
| `price` | INT | Price per unit of the product for the line item. |
 
---
 
## Notes
- All `*_key` columns are **surrogate keys** generated during the Gold layer transformation — they are not present in the source systems.
- This catalog documents the final, business-ready Gold layer only. For raw and intermediate layer structures (Bronze/Silver), refer to the column definitions within the respective DDL scripts under `scripts/bronze/` and `scripts/silver/`.
 
