SELECT
	-- P.id AS profile_id,
	P.email,
	P.first_name,
	P.last_name,
	P.phone,
	-- P.user_id,
	-- U.id AS users_id,
	-- U.account_id AS users_account_id,
	-- A.id AS accounts_id,
	A.id AS user_id,
	-- A.status AS account_status,
	Pc.external_id AS stripe_customer_id
FROM
	accounts_service.profiles AS P
	LEFT JOIN accounts_service.users U ON U.id = P.user_id
	LEFT JOIN accounts_service.accounts A ON A.id = U.account_id
	LEFT JOIN accounts_service.payment_customers Pc ON Pc.id = A.payment_source_id
WHERE U.role_id = 3;