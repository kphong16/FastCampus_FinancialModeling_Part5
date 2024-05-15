USE cashflow;

SELECT account_id, category, SUM(deposit) AS total_deposits, SUM(withdrawal) AS total_withdrawals
FROM cashflow_tbl
WHERE category = '객실수입'
GROUP BY account_id, category;

SELECT dw_date, SUM(deposit) AS total_deposits, SUM(withdrawal) AS total_withdrawal, SUM(deposit) - SUM(withdrawal) AS cash_diff
FROM cashflow_tbl
GROUP BY dw_date;

SELECT a.*, c.*
FROM accounts_info a
JOIN cashflow_tbl c ON a.account_id = c.account_id;

SELECT 
	a.account_id, a.bank_name, a.account_number, a.account_alias, 
	c.dw_date, c.category, c.client, c.deposit, c.withdrawal, c.description
FROM accounts_info a
JOIN cashflow_tbl c ON a.account_id = c.account_id;

SELECT 	
	a.bank_name, SUM(deposit) - SUM(withdrawal) AS balance
FROM accounts_info a	
JOIN cashflow_tbl c ON a.account_id = c.account_id	
GROUP BY a.bank_name;