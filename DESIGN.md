# Design Document

By Tomas Borghetto

Video Overview: https://www.youtube.com/watch?v=CZSSmM13fco

## Scope

  The purpose of this database is to manage and analyze financial data of companies across various sectors. It aims to provide insights into market capitalization, financial performance, and key financial ratios, facilitating subsequent fundamental analysis of each company.

  The database includes entities such as countries, companies, financial information, and financial ratios. It captures essential data that helps in analyzing the financial health and performance of companies.

  The database does not include personal data of individuals, non-financial data, or any qualitative metrics. Additionally, it does not track real-time stock prices, information about years other than 2023 and external market events.

## Functional Requirements

  Users should be able to:
  - Query financial ratios and metrics for specific companies.
  - Retrieve and analyze market capitalization data by sector.
  - Generate reports on company performance over specified years.
  - Compare financial ratios across different companies and sectors.

  Users should not be able to:
  - Modify or delete existing records to maintain data integrity.
  - Access personal information about company executives or employees.
  - Perform real-time analytics or access external financial data feeds.

## Representation

### Entities

  The entities represented in the database are:
  - `countries`
  - `companies`
  - `financial_info`
  - `financial_ratios`

**The entities will have the next attributes**
  - **countries**: `id`, `country`
  - **companies**: `id`, `sector`, `name`, `market_cap`, `country_id`
  - **financial_info**: `id`, `net_income`, `cost_of_revenue`, `total_cost_of_revenue`, `gross_profit`, `operating_expense`, `pretax_income`, `tax_provision`, `total_expenses`, `company_id`, `year`
  - **financial_ratios**: `company_id`, `debt_to_equity_ratio`, `ROE`, `ROA`, `price_to_earnings_ratio`, `current_ratio`, `quick_ratio`, `year`

  I chose `REAL` for financial figures to accommodate decimal values representing monetary amounts. `INTEGER` is used for identifiers to ensure uniqueness and efficient indexing.

  I employed `PRIMARY KEY` constraints to uniquely identify records in each table. `FOREIGN KEY` constraints are used to establish relationships between tables and maintain referential integrity.

### Relationships

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.
![ER Diagram](diagram.png)≠
- The `companies` entity relates to `countries` through `country_id`, indicating the country where each company is located.
- The `financial_info` entity relates to `companies` through `company_id`, linking financial data to the respective companies.
- The `financial_ratios` entity also relates to `companies` via `company_id`, allowing for the analysis of financial ratios for each company.

## Optimizations

  I created the following optimizations:
  - **Indexes** on `financial_ratios` for `debt_to_equity_ratio` and `year` to speed up queries related to financial ratios over time.
  - **Indexes** on the `companies` table for `sector` and `market_cap` to enhance search performance for specific sectors and market capitalizations.
  - **Views** such as `average_roe_by_sector` and `top_companies_by_gross_profit` to simplify complex queries and improve readability for users.

## Limitations

  The design does not support complex multi-dimensional analytics, such as time series analysis or machine learning predictions directly. Additionally, the database is not optimized for handling large-scale real-time data inputs.

  The database may struggle to accurately represent dynamic financial data changes, such as stock price fluctuations, as it is structured primarily for historical data analysis. It also does not account for external factors influencing company performance, like economic trends or market disruptions.
