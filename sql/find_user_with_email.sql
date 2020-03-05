SELECT email, first_name, last_name, role_id 
FROM profiles as P
LEFT JOIN users U ON U.id = P.user_id
Left JOIN accounts A on A.id = U.account_id
WHERE strpos(P.email, 'seemeyer') > 0
ORDER BY P.email asc;
