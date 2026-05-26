-- 1. Compare customer balance with the average balance of their job category (cleaned)
SELECT 
    CUST_ID,
    RTRIM(JOB, '.') AS CLEANED_JOB,
    BALANCE,
    ROUND(AVG(BALANCE) OVER(PARTITION BY RTRIM(JOB, '.')), 2) AS job_average_balance,
    ROUND(BALANCE - AVG(BALANCE) OVER(PARTITION BY RTRIM(JOB, '.')), 2) AS balance_deviation
FROM BANK_DATA;

-- 2. Rank customers financially from highest to lowest within each marital status
SELECT 
    CUST_ID,
    MARITAL,
    BALANCE,
    RANK() OVER(PARTITION BY MARITAL ORDER BY BALANCE DESC) AS financial_rank
FROM BANK_DATA;