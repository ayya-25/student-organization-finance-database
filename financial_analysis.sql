USE organization_finance;

-- 1. Total Income
SELECT
    SUM(amount) AS total_income
FROM transactions
WHERE transaction_type = 'Income';


-- 2. Total Expense
SELECT
    SUM(amount) AS total_expense
FROM transactions
WHERE transaction_type = 'Expense';


-- 3. Organization Balance
SELECT
    SUM(
        CASE
            WHEN transaction_type = 'Income' THEN amount
            WHEN transaction_type = 'Expense' THEN -amount
        END
    ) AS balance
FROM transactions;


-- 4. Expense by Category
SELECT
    category,
    SUM(amount) AS total_expense
FROM transactions
WHERE transaction_type = 'Expense'
GROUP BY category
ORDER BY total_expense DESC;


-- 5. Activities with Deficit
SELECT
    a.activity_name,
    SUM(
        CASE
            WHEN t.transaction_type = 'Income' THEN t.amount
            WHEN t.transaction_type = 'Expense' THEN -t.amount
        END
    ) AS balance
FROM activities a
JOIN transactions t
    ON a.activity_id = t.activity_id
GROUP BY a.activity_id, a.activity_name
HAVING balance < 0;


-- 6. Income by Category
SELECT
    category,
    SUM(amount) AS total_income
FROM transactions
WHERE transaction_type = 'Income'
GROUP BY category
ORDER BY total_income DESC;


-- 7. Financial Summary by Activity
SELECT
    a.activity_name,

    SUM(
        CASE
            WHEN t.transaction_type = 'Income'
            THEN t.amount
            ELSE 0
        END
    ) AS total_income,

    SUM(
        CASE
            WHEN t.transaction_type = 'Expense'
            THEN t.amount
            ELSE 0
        END
    ) AS total_expense,

    SUM(
        CASE
            WHEN t.transaction_type = 'Income'
            THEN t.amount
            WHEN t.transaction_type = 'Expense'
            THEN -t.amount
        END
    ) AS balance

FROM activities a
JOIN transactions t
    ON a.activity_id = t.activity_id

GROUP BY a.activity_id, a.activity_name;