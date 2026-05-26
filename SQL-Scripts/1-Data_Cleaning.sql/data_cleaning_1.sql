-- 1. Check the total number of records in the main bank data table
SELECT COUNT(*) AS total_bank_records FROM BANK_DATA;

-- 2. Check the total number of records in the customer details table
SELECT COUNT(*) AS total_customer_records FROM CUSTOMER_DETAILS;

-- 3. Preview a sample (first 10 rows) of BANK_DATA to understand its structure
SELECT * FROM BANK_DATA WHERE ROWNUM <= 10;

-- 4. Check distinct jobs (which shows the dot issue in 'admin.')
SELECT DISTINCT JOB FROM BANK_DATA;

-- 5. Solution: Query distinct jobs and clean 
SELECT DISTINCT RTRIM(JOB, '.') AS CLEANED_JOB 
FROM BANK_DATA;