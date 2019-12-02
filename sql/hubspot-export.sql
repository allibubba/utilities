SELECT 
  P.id, 
  P.user_id, 
  U.id AS users_id,
  U.account_id AS users_account_id,
  A.id AS accounts_id
FROM accounts_service.profiles AS P
LEFT OUTER JOIN accounts_service.users U ON U.id = P.user_id
LEFT OUTER JOIN accounts_service.accounts A ON A.id = U.account_id
LIMIT 10;

