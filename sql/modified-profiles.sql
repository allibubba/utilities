SELECT
  count(*); 
  -- accounts_service.profiles.id
FROM accounts_service.profiles
  -- JOIN accounts_service.profiles updated_at
  -- ON accounts_service.profiles.created_at != accounts_service.profiles.updated_at;
LEFT JOIN accounts_service.users U ON U.id = accounts_service.profiles.user_id
WHERE 
  U.role_id = 4 AND DATEDIFF(d, accounts_service.profiles.created_at, accounts_service.profiles.updated_at) != 0;

