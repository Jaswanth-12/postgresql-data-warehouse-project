# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀  

This system implements an end-to-end ELT pipeline processing multi-source ERP and CRM operational data. Engineered entirely within PostgreSQL using a 3-tier Medallion Architecture, this repository houses the production-ready scripts required to ingest raw data, enforce strict quality schema validations, and model data into an analytical star schema optimized for business intelligence.

---

## 🏗️ Data Architecture

The data architecture for this project implements the industry-standard **Medallion Architecture**, structured into **Bronze**, **Silver**, and **Gold** layers:

![Data Architecture](docs/data_architecture.png)

1. **Bronze Layer**: Acts as the raw landing zone. Data is ingested as-is from source system CSV files directly into the SQL Server database.
2. **Silver Layer**: The transformation and cleansing zone. This layer handles data quality enrichment, standardization, deduplication, and normalization.
3. **Gold Layer**: The business-ready analytical zone. Data is structured into an optimized star schema (fact and dimension tables) ready for high-performance reporting and analytics.

---

## 📖 Project Overview

This project showcases end-to-end expertise across the entire data engineering lifecycle:

1. **Data Architecture**: Designing a modern data warehouse architecture utilizing SQL Server schemas to segregate the Medallion layers.
2. **ETL/ELT Pipelines**: Constructing SQL processing scripts to extract, transform, clean, and load data seamlessly across the Bronze, Silver, and Gold zones.
3. **Data Modeling**: Developing a star schema optimized for fast analytical queries, handling dimensional attributes and factual metrics.
4. **Analytics & Reporting**: Writing advanced SQL scripts to surface insights regarding business health, customer behavior, and sales performance.

🎯 This repository serves as a practical demonstration of core competencies in:
- **Advanced SQL Scripting & Data Transformation**
- **Data Architecture & Star Schema Design (Facts & Dimensions)**
- **Medallion Pipeline Construction**
- **Data Cleansing, Validation, & Quality Assurance**

---

## 🛠️ Toolstack & Project Resources

- **Storage & Compute:** [PostgreSQL](https://www.postgresql.org/) (Open-source relational database hosting the warehouse)
- **Database GUI:** [pgAdmin](https://www.pgadmin.org/) / [DBeaver](https://dbeaver.io/) (GUI tool for managing database objects and executing queries)
- **Version Control:** [Git & GitHub](https://github.com/)
- **Diagramming:** [Draw.io / Diagrams.net](https://www.drawio.com/) (Used for designing schemas and data flows)
- **Source Data:** [`/datasets`](datasets/) (Contains the raw ERP and CRM CSV files)

---

## 🚀 Core Project Requirements

### 1. Building the Data Warehouse (Data Engineering)
* **Objective:** Develop a robust data warehouse using SQL Server to consolidate siloed business data, providing a single source of truth.
* **Specifications:**
  * **Data Integration:** Blend disparate datasets originating from two separate business systems (ERP and CRM).
  * **Data Quality:** Identify and resolve missing values, trailing spaces, inconsistent formatting, and duplicate records during the Silver transition.
  * **Scope:** Focus purely on the latest snapshot of the business dataset (historization/SCD handling is excluded for this scope).
  * **Documentation:** Provide structured data catalogs and clear definitions to bridge the gap between technical schemas and business users.

### 2. Analytics & Reporting (Data Analysis)
* **Objective:** Write optimized analytical queries against the Gold layer to uncover insights regarding:
  * **Customer Behavior:** Tracking purchasing frequencies, segmentation, and lifetime value indicators.
  * **Product Performance:** Identifying top-performing products, categories, and inventory movement trends.
  * **Sales Trends:** Visualizing growth, seasonal spikes, and revenue concentrations.

## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
```
---


## 🛡️ License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and build upon this project for your own learning or professional portfolio work.

---

## 👤 About Me

Hi, I'm **Jaswanth Sai Grandhisila**! I am an **Assistant System Engineer (ASE) at TCS**, specializing in data infrastructure and modern data engineering methodologies. I have a strong passion for transforming raw, unorganized datasets into clean, optimized production environments that power analytics and data-driven decision-making.

Let's connect and talk data engineering!
* **GitHub:** [https://github.com/Jaswanth-12](https://github.com/Jaswanth-12)
* **LinkedIn:** [https://www.linkedin.com/in/jaswanth-sai-grandhisila-1798b2260/](https://www.linkedin.com/in/jaswanth-sai-grandhisila-1798b2260/)

```
