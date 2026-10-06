# Project Requirements
 
## Building the Data Warehouse (Data Engineering)
 
### Objective
Develop a modern data warehouse using **SQL Server** to consolidate sales data from multiple source systems, enabling analytical reporting and informed, data-driven decision-making.
 
### Specifications
 
- **Data Sources**: Import data from two source systems — **ERP** and **CRM** — provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues (missing values, duplicates, inconsistent formats, invalid entries) prior to analysis.
- **Integration**: Combine both source systems into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historical tracking (historization) is not required for this version.
- **Documentation**: Provide clear documentation of the data model, including the data catalog, naming conventions, and architecture diagrams, to support both business stakeholders and analytics teams.
### Data Architecture (Medallion)
 
| Layer | Purpose |
|---|---|
| **Bronze** | Stores raw data exactly as received from source systems (CSV → SQL Server), with no transformations applied. |
| **Silver** | Cleanses, standardizes, and normalizes data — handling nulls, duplicates, data type mismatches, and inconsistent naming — to prepare it for analysis. |
| **Gold** | Houses business-ready data modeled into a **star schema**, optimized for reporting and analytics. |
 
---
 
## BI: Analytics & Reporting (Data Analysis)
 
### Objective
Develop SQL-based analytics to deliver clear, actionable insights into:
 
- **Customer Behavior** — understanding purchasing patterns and customer segments
- **Product Performance** — identifying top/bottom performing products
- **Sales Trends** — tracking sales over time to support forecasting and strategy
These insights are intended to empower stakeholders with key business metrics, enabling data-driven strategic decisions.
 
---
 
## Tools Used
 
- **SQL Server Express** — database engine for hosting the data warehouse
- **DBeaver** — SQL client used to write, run, and manage all scripts
- **Draw.io** — used for architecture and data flow diagrams
---
 
## Notes
 
This document follows the same requirements structure outlined in the original course project by 
[Data With Baraa](https://github.com/DataWithBaraa/sql-data-warehouse-project), adapted here as part of 
my own hands-on implementation.
 
