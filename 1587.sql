SELECT u.name AS NAME, SUM(t.amount) AS BALANCE
FROM Users AS u INNER JOIN Transactions AS t ON u.account = t.account
GROUP BY u.account
HAVING SUM(t.amount) > 10000;
