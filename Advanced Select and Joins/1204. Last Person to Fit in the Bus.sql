WITH CTE AS
(
  SELECT person_name, SUM(weight) OVER(ORDER BY turn) AS SUM
  FROM Queue
)

SELECT TOP(1) person_name
FROM CTE
WHERE SUM <= 1000
ORDER BY SUM DESC;