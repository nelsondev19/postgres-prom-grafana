Registered users in the current year


```sql
SELECT
  TO_CHAR(created_at, 'Month') AS month,
  COUNT(*) AS registered_users
FROM users
WHERE EXTRACT(YEAR FROM created_at) = EXTRACT(YEAR FROM CURRENT_TIMESTAMP)
GROUP BY TO_CHAR(created_at, 'Month')
ORDER BY TO_CHAR(created_at, 'Month') ASC;
```