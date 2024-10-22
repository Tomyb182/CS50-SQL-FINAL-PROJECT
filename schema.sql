
-- countries table
CREATE TABLE IF NOT EXISTS countries (
    id INTEGER PRIMARY KEY,
    country TEXT NOT NULL
);

-- companies table
CREATE TABLE IF NOT EXISTS companies (
    id INTEGER PRIMARY KEY,
    sector TEXT NOT NULL,
    name TEXT NOT NULL,
    market_cap REAL NOT NULL,
    country_id INTEGER NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

-- financial_info table
CREATE TABLE IF NOT EXISTS financial_info (
    id INTEGER PRIMARY KEY,
    net_income REAL NOT NULL,
    cost_of_revenue REAL,
    total_cost_of_revenue REAL,
    gross_profit REAL,
    operating_expense REAL,
    pretax_income REAL,
    tax_provision REAL,
    total_expenses REAL,
    company_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    FOREIGN KEY (company_id) REFERENCES companies(id)
);

-- financial_ratios table
CREATE TABLE IF NOT EXISTS financial_ratios (
    company_id INTEGER NOT NULL,
    debt_to_equity_ratio REAL,
    ROE REAL,
    ROA REAL,
    price_to_earnings_ratioqq REAL,
    current_ratio REAL,
    quick_ratio REAL,
    year INTEGER NOT NULL,
    PRIMARY KEY (company_id, year),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);

---- Composite index on the financial_ratios table to improve queries based on debt_to_equity_ratio and year:
CREATE INDEX idx_debt_equity_year ON financial_ratios(debt_to_equity_ratio, year);

-- Composite index on the companies table to optimize searches by sector and market_cap:
CREATE INDEX idx_sector_market_cap ON companies(sector, market_cap);


--View to obtain the average ROA (Return on Assets) by country and year
CREATE VIEW "avg_roa_by_country" AS
SELECT co.country, fr.year, ROUND(AVG(fr.ROA),2) AS avg_ROA
FROM financial_ratios fr
JOIN companies c ON fr.company_id = c.id
JOIN countries co ON c.country_id = co.id
GROUP BY co.country, fr.year
HAVING AVG(fr.ROA) IS NOT NULL;

--View to list companies with the highest Return on Assets (ROA) in a specific sector
CREATE VIEW "top_roa_by_sector" AS
SELECT c.name AS company_name, c.sector, fr.year, fr.ROA
FROM companies c
JOIN financial_ratios fr ON c.id = fr.company_id
WHERE fr.ROA IS NOT NULL
AND c.sector = 'Technology'
AND fr.year = 2023
ORDER BY fr.ROA DESC;
