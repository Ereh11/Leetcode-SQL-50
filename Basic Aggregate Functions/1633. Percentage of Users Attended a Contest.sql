SELECT contest_id, 
ROUND(CAST(COUNT(user_id) AS DECIMAL) / (SELECT COUNT(*) FROM Users) * 100.0, 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id