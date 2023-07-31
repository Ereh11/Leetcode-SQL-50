SELECT 'Low Salary' AS category, ISNULL(COUNT(account_id), 0) AS accounts_count
FROM  Accounts
WHERE income < 20000

UNION

SELECT 'Average Salary' AS category, ISNULL(COUNT(account_id), 0) AS accounts_count
FROM  Accounts
WHERE income >= 20000 AND income <= 50000
        

UNION

SELECT 'High Salary' AS category, ISNULL(COUNT(account_id), 0) AS accounts_count
FROM  Accounts
WHERE income > 50000;