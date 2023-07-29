WITH CTE AS
(
   SELECT employee_id 
   FROM Employee
   GROUP BY employee_id
   HAVING COUNT(employee_id) = 1
)


SELECT employee_id, department_id
FROM Employee
WHERE employee_id IN (SELECT * FROM CTE) OR primary_flag = 'Y';