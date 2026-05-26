# Advanced Bank Data Analytics and Business Intelligence

## Project Overview
This project focuses on analyzing bank customer demographics and account activities to extract critical Key Performance Indicators (KPIs) that drive strategic decision-making in financial services. The pipeline spans from raw data cleaning and advanced transformation using Oracle SQL to building an interactive, enterprise-grade executive dashboard in Power BI.

## Tech Stack and Tools
- Database and ETL: Oracle SQL
- Data Visualization: Power BI Desktop
- Documentation: MS Word / PDF

## Executive Dashboard Preview
The complete interactive visual layout can be viewed directly in the repository via the preview file below:
- [View Live Dashboard Layout (PDF)](Bank_Analytics_dashboard.pdf)

## Phase 1: SQL Data Cleaning and Engineering
The raw data suffered from operational data quality issues, such as trailing dots in occupational categories (like admin.) causing aggregation duplicates, and siloed relational tables. All transformations were executed on the fly within Oracle SQL queries to optimize database performance:

- String Standardization: Handled trailing punctuations dynamically using RTRIM(JOB, '.') to ensure unified grouping, successfully consolidating the admin and technician categories into clean visual aggregates
- Relational Joins: Successfully merged demographic data with active customer card details using structured INNER JOIN operations mapped via CUST_ID.

## Phase 2: Exploratory Data Analysis and Window Functions
Advanced analytical concepts and SQL Window Functions were deployed to dive deeper into customer financial behaviors:

- Segment Benchmarking: Implemented AVG() OVER (PARTITION BY...) to measure individual account balances against global and occupational segment averages, specifically benchmarking administrators and technicians.
- Financial Ranking: Applied RANK() OVER partitioned by demographic attributes to isolate top-depositing clients within specific target markets.

## Phase 3: Power BI Dashboard and UI/UX Design
The engineered SQL datasets were imported into Power BI to construct a clean, highly visual analytics application:

- Robust Analytics: Developed custom DAX measures for calculating absolute customer volume, aggregated assets, and strategic financial averages.
- Professional Corporate UI/UX: Styled using a sleek navy blue color scheme framed against a soft gray canvas backplate to mirror professional banking applications, maintaining a clear visual hierarchy.

## Full Project Documentation
For a detailed academic and technical breakdown of the methodology, challenges, and architectural decisions, please review the Full Project Documentation (PDF) located inside the Docs folder.

## Repository Structure
- SQL-Scripts /
  - 01_Data_Cleaning.sql
  - 02_Exploratory_Analysis.sql
  - 03_Advanced_Insights.sql
- Dashboard /
  - (Contains the core Power BI Desktop project file)
- Docs /
  - Bank_Analytics_Project_Documentation.pdf
- Bank_Analytics_dashboard.pdf

Developed as a benchmark project in Financial Data Analysis.
