SELECT dept.name AS Department, temp.name as Employee, temp.salary
FROM 
(
    SELECT *, DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS RK
    FROM Employee
) AS temp
INNER JOIN Department AS dept
ON temp.departmentId = dept.id
WHERE RK <= 3;