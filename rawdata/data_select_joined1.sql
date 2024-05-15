-- JOIN한 데이터에서 필요한 컬럼 추출하는 쿼리문

SELECT 	
    a.account_id, a.bank_name, a.account_number, a.account_alias, 
    c.dw_date, c.category, c.client, c.deposit, c.withdrawal, 
    c.description
FROM accounts_info a	
JOIN cashflow_tbl c ON a.account_id = c.account_id;	