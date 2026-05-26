-- 1. Customer distribution by job (cleaned) and the average balance for each job
SELECT 
    RTRIM(JOB, '.') AS CLEANED_JOB, 
    COUNT(*) AS total_customers, 
    ROUND(AVG(BALANCE), 2) AS average_balance
FROM BANK_DATA
GROUP BY RTRIM(JOB, '.')
ORDER BY average_balance DESC;

-- 2. The impact of marital status and education level on the customer's deposit decision
SELECT 
    MARITAL, 
    EDUCATION, 
    DEPOSIT, 
    COUNT(*) AS total_customers
FROM BANK_DATA
GROUP BY MARITAL, EDUCATION, DEPOSIT
ORDER BY EDUCATION, total_customers DESC;

-- 3. INNER JOIN to explore the relationship between ATM card type and balance size
SELECT 
    c.ATM_CARD_TYPE,
    COUNT(b.CUST_ID) AS total_holders,
    ROUND(AVG(b.BALANCE), 2) AS avg_balance
FROM BANK_DATA b
INNER JOIN CUSTOMER_DETAILS c ON b.CUST_ID = c.CUST_ID
GROUP BY c.ATM_CARD_TYPE
ORDER BY avg_balance DESC;