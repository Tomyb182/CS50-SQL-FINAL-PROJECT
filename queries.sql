
-- Construction of Countries table
INSERT INTO countries (country)
VALUES ('brazil'),
('spain'),
('mexico'),
('germany'),
('italy'),
('south korea'),
('britain'),
('USA'),
('japan'),
('norway');

-- Construction of Companies Table
-- Market cap is expressed on Billion USD
INSERT INTO companies (sector, name, market_cap, country_id)
VALUES
('Energy', 'Petrobras', 90.06, 1),
('Financial Services', 'Banco Do Brasil', 28.15, 1),
('Financial Services', 'Bradesco', 24.44, 1),
('Financial Services', 'Banco Santander', 55.63, 2),
('Energy', 'Repsol', 20.49, 2),
('Communication Services', 'Telefonica', 22.27, 2),
('Communication Services', 'America Movil', 58.7, 3),
('Consumer Cyclical', 'Volkswagen', 84.58, 4),
('Consumer Cyclical', 'BMW Group', 74.32, 4),
('Consumer Cyclical', 'Mercedes Benz', 82.47, 4),
('Utilities', 'Uniper', 3.29, 4),
('Industrials', 'Siemens', 126.24, 4),
('Financial Services', 'Allianz', 104.48, 4),
('Communication Services', 'Deutsche Telekom', 104.34, 4),
('Healthcare', 'Bayer', 48.17, 4),
('Basic Materials', 'BASF', 44.61, 4),
('Energy', 'Enel', 59.1, 5),
('Energy', 'ENI', 47.58, 5),
('Financial Services', 'Assicurazioni Generali', 34.3, 5),
('Technology', 'Samsung Electronics', 422.4, 6),
('Consumer Cyclical', 'Hyundai Motor', 48.5, 6),
('Technology', 'SK', 121.5, 6),
('Consumer Cyclical', 'KIA', 30.1, 6),
('Technology', 'LG Electronics', 16.5, 6),
('Energy', 'SHELL', 216.33, 7),
('Consumer Defensive', 'Tesco', 22.5, 7),
('Consumer Defensive', 'Unilever', 123.3, 7),
('Communication Services', 'Vodafone Group', 24.7, 7),
('Consumer Defensive', 'Walmart', 405.2, 8),
('Consumer Cyclical', 'Amazon', 1307, 8),
('Technology', 'Apple', 2870, 8),
('Healthcare', 'CVS Health', 86.72, 8),
('Healthcare', 'UnitedHealth Group', 513.5, 8),
('Technology', 'Microsoft', 2450, 8),
('Consumer Cyclical', 'GMC', 45.82, 8),
('Consumer Defensive', 'Kroger', 32.27, 8),
('Energy', 'Valero Energy', 45.66, 8),
('Consumer Cyclical', 'Tesla', 837.6, 8),
('Communication Services', 'AT&T', 107.4, 8),
('Industrials', 'Fedex', 63.48, 8),
('Consumer Defensive', 'PEPSICO', 263.3, 8),
('Industrials', 'Boeing', 128.1, 8),
('Consumer Cyclical', 'Toyota Motor', 244.1, 9),
('Consumer Cyclical', 'Honda Motor', 46.22, 9),
('Consumer Cyclical', 'Mitsubishi', 32.11, 9),
('Technology', 'Sony', 118.9, 9),
('Consumer Cyclical', 'AEON', 20.5, 9),
('Industrials', 'Sumitomo Corporation', 18.3, 9),
('Consumer Cyclical', 'Denso', 57, 9),
('Consumer Cyclical', 'Subaru', 13.5, 9),
('Energy', 'Equinor', 111.4, 10);

-- Numbers are expressed on Million USD
INSERT INTO financial_info (net_income, cost_of_revenue, total_cost_of_revenue, gross_profit, operating_expense, pretax_income, tax_provision, total_expenses, company_id, year)
VALUES
(24.58, 62.89, 83.47, 20.58, 15.36, 9.78, 3.12, 80.45, 1, 2023),  -- Petrobras
(7.45, NULL, 18.76, 10.58, 5.67, 6.45, 1.45, 16.78, 2, 2023),    -- Banco Do Brasil
(4.78, NULL, 12.45, 7.45, 4.45, 3.89, 0.89, 10.67, 3, 2023),    -- Bradesco
(12.56, NULL, 30.12, 17.56, 8.78, 11.12, 2.34, 28.5, 4, 2023),   -- Banco Santander
(1.080, 3.200, 3.800, 1.500, 1.000, 1.080, 300, 3.300, 5, 2023),    -- REPSOL
(2.14, NULL, NULL, 12.74, 8.48, 4.67, 0.59, 12.4, 6, 2023),    -- Telefonica
(1.094, NULL, NULL, 1.815, NULL, 1.094, NULL, 2.41, 7, 2023),    -- America movil
(19.5, NULL, 72.1, 52.6, 22.5, 30.7, 10.3, 62.8, 8, 2023),    -- VW
(10.9, NULL, 39.1, 28.2, 12.6, 17.3, 5.2, 34.8, 9, 2023),    -- BMW
(19.7, NULL, 77.1, 58.1, 23.8, 33.4, 9.6, 67.2, 10, 2023),    -- Mercedes Benz
(4.4, NULL, 13.8, 6.4, 5.2, 5.3, 1.0, 9.8, 11, 2023),    -- Uniper
(6.3, 52, 52, 25, 16.5, 7.8, 1.5, 68.5, 12, 2023), -- Siemens
(7.5, 120, 120, 33, 20, 8.8, 1.3, 140, 13, 2023), -- Allianz
(4.2, 75, 75, 37, 31, 5.2, 1, 106, 14, 2023), -- Deutsche Telekom
(3, 35, 35, 15, 12, 4, 1, 47, 15, 2023), -- Bayer
(4.8, 60, 60, 26, 20, 5.5, 0.7, 84, 16, 2023), -- BASF
(4.9, 60, 60, 15.8, 10.4, 5.1, 1.2, 66.2, 17, 2023), -- ENEL
(10.5, 55, 55, 25, 18, 12.5, 2.5, 65, 18, 2023), -- ENI
(3.1, 36, 36, 20, 10, 4.5, 0.8, 34.5, 19, 2023), -- Assicurazioni
(26.4, 150, 150, 49.6, 43.2, 28.5, 5.8, 159.2, 20, 2023), --Samsung Electronics
(6.2, 50, 50, 17.3, 10.1, 8.2, 1.7, 56.5, 21, 2023), -- Hyundai Motor
(5.4, 30, 30, 18.5, 8.9, 6.2, 1.3, 37.5, 22, 2023), -- SK Group
(4.1, 40, 40, 10.5, 7.3, 5.5, 1.1, 38.3, 23, 2023), -- KIA
(3.5, 25, 25, 9.8, 6.2, 4.4, 0.9, 30.5, 24, 2023), --LG Electronics
(21.2, 150, 150, 40, 30, 17.5, 3.5, 163.5, 25, 2023), -- Shell
(2.3, 45, 45, 12, 5, 1.8, 0.5, 43.5, 26, 2023), -- Tesco
(9.5, 60, 60, 18, 8, 7.2, 1.6, 67.5, 27, 2023), -- Unilever
(1.5, 40, 40, 20, 10, 5, 1, 38, 28, 2023), -- Vodafone Group
(13.7, 500, 500, 20, 15, 10, 3, 510, 29, 2023), -- Walmart
(11.8, 300, 300, 25, 12, 9, 2, 305, 30, 2023), -- Amazon
(94.7, 100, 100, 80, 10, 90, 4.5, 106, 31, 2023), -- Apple
(6.3, 100, 100, 15, 8, 5.5, 1.5, 99, 32, 2023), -- CVS Health
(20.5, 150, 150, 50, 30, 15, 2, 152, 33, 2023), -- UnitedHealth Group
(72.5, 60, 60, 30, 15, 60, 6, 66, 34, 2023), -- Microsoft
(5.2, 45, 45, 12, 7, 4.5, 1, 44, 35, 2023), -- GMC
(2.9, 130, 130, 15, 10, 3.5, 1, 128.5, 36, 2023), -- Kroger
(3.6, 90, 90, 12, 8, 5.5, 1.1, 89.5, 37, 2023), -- Valero Energy
(12.6, 60, 60, 22, 15, 10.5, 2.5, 57, 38, 2023), -- Tesla
(5.1, 80, 80, 20, 12, 4.5, 0.8, 79.8, 39, 2023), -- AT&T
(4.5, 70, 70, 18, 9, 3.5, 1, 72, 40, 2023), -- FedEx
(9.6, 60, 60, 25, 10, 8, 1.5, 69.5, 41, 2023), -- PepsiCo
(5.1, 75, 75, 15, 20, 3, 1, 71, 42, 2023), -- Boeing
(19.3, 280, 280, 38, 15, 16, 3.1, 297.1, 43, 2023), -- Toyota Motor
(5.2, 130, 130, 25, 10, 4.2, 0.8, 124.8, 44, 2023), -- Honda Motor
(2.4, 60, 60, 15, 8, 2, 0.5, 58.5, 45, 2023), -- Mitsubishi
(8.1, 70, 70, 30, 10, 6.5, 1.2, 68.1, 46, 2023), -- Sony
(3.5, 50, 50, 12, 5, 2.5, 0.5, 49.5, 47, 2023), -- AEON
(4.6, 80, 80, 20, 10, 4, 0.9, 79.1, 48, 2023), -- Sumitomo
(3.7, 40, 40, 15, 5, 3, 0.5, 39.5, 49, 2023), -- Denso
(1.5, 35, 35, 10, 6, 1.2, 0.3, 34.5, 50, 2023), -- Subaru
(10.1, 45, 45, 18, 12, 8.5, 1.5, 42.5, 51, 2023); -- Equinor

-- Numbers are expressed on Million USD
INSERT INTO financial_ratios (company_id, debt_to_equity_ratio, ROE, ROA, price_to_earnings_ratioqq, current_ratio, quick_ratio, year)
VALUES
(1, 15.3, 6.5, 8, 12, 1.1, 0.9, 2023), -- Petrobras
(2, 12.5, 1.8, 10, 2.0, 1.0, 0.8, 2023), -- Banco Do Brasil
(3, 10.1, 1.6, 9, 15, 1.2, 1.0, 2023),  -- Bradesco
(4, 13.0, 1.9, 12, 13, 1.1, 0.9, 2023), -- Banco Santander
(5, 12.8, 5.1, 11, 1.5, 0.8, 0.7, 2023), -- REPSOL
(6, 8.5, 2.5, 6, 10, 0.7, 0.6, 2023),  -- Telefonica
(7, 14.0, 4.0, 14, 9, 1.4, 1.2, 2023), -- America movil
(8, 10.0, 5.8, 8, 12, 1.3, 1.1, 2023), -- VW
(9, 14.5, 6.7, 11, 15, 1.2, 1.0, 2023), -- BMW
(10, 16.2, 7.0, 9, 10, 1.4, 1.2, 2023), -- Mercedes Benz
(11, 9.0, 3.8, 7, 11, 0.8, 0.7, 2023), -- Uniper
(12, 17.5, 8.0, 15, 13, 1.6, 1.3, 2023), -- Siemens
(13, 12.0, 5.4, 10, 11, 1.4, 1.1, 2023), -- Allianz
(14, 10.2, 4.5, 9, 12, 0.9, 0.8, 2023), -- Deutsche Telekom
(15, 9.8, 4.1, 8, 10, 1.3, 1.0, 2023), -- Bayer
(16, 11.0, 5.3, 9, 15, 1.2, 1.0, 2023), -- BASF
(17, 14.1, 6.5, 12, 8, 1.5, 1.2, 2023), -- ENEL
(18, 12.3, 5.9, 10, 12, 1.4, 1.1, 2023), -- ENI
(19, 11.0, 3.5, 9, 10, 1.2, 1.0, 2023), -- Assicurazioni
(20, 18.0, 8.5, 15, 20, 1.6, 1.4, 2023), --Samsung Electronics
(21, 13.0, 5.5, 12, 15, 1.3, 1.1, 2023), -- Hyundai Motor
(22, 12.2, 6.0, 11, 10, 1.5, 1.2, 2023), -- SK Group
(23, 14.0, 5.0, 9, 13, 1.4, 1.1, 2023), -- KIA
(24, 10.5, 4.3, 8, 12, 1.2, 0.9, 2023), --LG Electronics
(25, 22.5, 7.8, 14, 15, 1.3, 1.1, 2023), -- Shell
(26, 10.0, 5.0, 9, 12, 0.9, 0.8, 2023), -- Tesco
(27, 18.1, 6.5, 11, 15, 1.4, 1.2, 2023), -- Unilever
(28, 9.5, 3.6, 7, 10, 1.1, 0.8, 2023), -- Vodafone Group
(29, 21.2, 5.6, 2.8, 22, 0.9, 0.7, 2023), -- Walmart
(30, 18.4, 3.4, 30, 1.6, 0.9, 0.8, 2023), -- Amazon
(31, 75, 28.5, 15, 28, 1.2, 1.1, 2023), -- Apple
(32, 10.3, 4.2, 9, 1.1, 0.6, 0.5, 2023), -- CVS Health
(33, 20.5, 8.1, 12, 20, 1.6, 1.4, 2023), -- UnitedHealth Group
(34, 36.8, 11.5, 25, 15, 2.5, 2.3, 2023), -- Microsoft
(35, 7.2, 3.1, 8, 1.2, 0.7, 0.6, 2023), -- GMC
(36, 15.5, 5.0, 10, 0.9, 0.8, 0.6, 2023), -- Kroger
(37, 10.8, 5.5, 12, 1.4, 0.8, 0.6, 2023), -- Valero Energy
(38, 25.2, 7.1, 60, 1.3, 1.1, 1.0, 2023), -- Tesla
(39, 14.0, 3.6, 10, 0.7, 0.6, 0.5, 2023), -- AT&T
(40, 11.5, 5.2, 15, 1.1, 0.9, 0.7, 2023), -- Fedex
(41, 18.1, 8.3, 16, 1.4, 1.0, 0.8, 2023), -- PepsiCo
(42, 21.0, 5.4, 18, 0.8, 1.3, 1.1, 2023), -- Boeing
(43, 15.0, 6.0, 10, 1.5, 0.9, 0.8, 2023), -- Toyota
(44, 12.5, 5.5, 8, 1.4, 1.0, 0.9, 2023), -- Honda
(45, 8.0, 4.0, 6, 1.2, 0.7, 0.6, 2023), -- Mitsubishi
(46, 18.0, 7.5, 15, 1.6, 1.1, 0.9, 2023), -- Sony
(47, 10.0, 4.8, 5, 1.3, 0.8, 0.6, 2023), -- AEON
(48, 14.0, 5.5, 10, 1.1, 0.9, 0.7, 2023), -- Sumitomo
(49, 12.5, 5.3, 9, 1.4, 1.0, 0.8, 2023), -- Denso
(50, 10.2, 4.0, 8, 1.2, 0.9, 0.7, 2023), -- Subaru
(51, 14.7, 6.2, 10, 12, 1.4, 1.1, 2023); -- Equinor


-- Querys
-- 1. Which companies have the largest market capitalization (market cap)?

SELECT name, market_cap
FROM companies
ORDER BY market_cap DESC;

-- 2. Which companies belong to a specific country (e.g., Spain)?

SELECT companies.name
FROM companies
JOIN countries ON companies.country_id = countries.id
WHERE countries.country = 'spain';

--3. Which companies have the highest gross profit in a specific year?

SELECT companies.name, financial_info.gross_profit
FROM financial_info
JOIN companies ON financial_info.company_id = companies.id
WHERE financial_info.year = 2023
ORDER BY gross_profit DESC
LIMIT 10;

-- 4. Which companies have a debt-to-equity ratio higher than a specific value?

SELECT companies.name, financial_ratios.debt_to_equity_ratio
FROM financial_ratios
JOIN companies ON financial_ratios.company_id = companies.id
WHERE debt_to_equity_ratio > 2.0
ORDER BY debt_to_equity_ratio DESC;


-- 5. What is the average ROE (Return on Equity) for companies in a specific sector?

SELECT companies.sector, AVG(financial_ratios.ROE) AS avg_ROE
FROM financial_ratios
JOIN companies ON financial_ratios.company_id = companies.id
WHERE companies.sector = 'Technology'
AND year = 2023;

-- 6. Which companies have a quick ratio below 1?

SELECT companies.name, quick_ratio
FROM financial_ratios
JOIN companies ON financial_ratios.company_id = companies.id
WHERE quick_ratio < 1
AND year = 2023;

-- 7. Which companies have the highest net income in relation to their price-to-earnings (P/E) ratio?

SELECT companies.name, financial_info.net_income, financial_ratios.price_to_earnings_ratioqq
FROM financial_info
JOIN financial_ratios ON financial_info.company_id = financial_ratios.company_id
JOIN companies ON financial_info.company_id = companies.id
WHERE financial_info.year = 2023
AND financial_ratios.year = 2023
ORDER BY net_income / price_to_earnings_ratioqq DESC;

--8. What is the total market capitalization of companies from a specific country?

SELECT countries.country, SUM(companies.market_cap) AS 'Total market cap'
FROM companies
JOIN countries ON companies.country_id = countries.id
WHERE countries.country = 'USA';

-- 9. What companies have a debt to equity ratio higher than the country's average?

SELECT companies.name AS 'Company name', financial_ratios.debt_to_equity_ratio AS 'Debt to equity ratio'
FROM financial_ratios
JOIN companies ON financial_ratios.company_id = companies.id
WHERE companies.country_id = (SELECT id FROM countries WHERE country = 'germany')
AND debt_to_equity_ratio > (SELECT AVG(debt_to_equity_ratio)
                            FROM financial_ratios
                            JOIN companies ON financial_ratios.company_id = companies.id
                            WHERE companies.country_id = (SELECT id FROM countries WHERE country = 'germany'));

-- 10. Query to obtain the average Debt-to-Equity Ratio by sector

SELECT c.sector, ROUND(AVG(fr.debt_to_equity_ratio),2) AS avg_debt_to_equity_ratio
FROM companies c
JOIN financial_ratios fr ON c.id = fr.company_id
GROUP BY c.sector
ORDER BY avg_debt_to_equity_ratio DESC;

