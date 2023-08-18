DELETE FROM Person
WHERE id NOT IN 
(
  SELECT MIN(id) 
  FROM Person
  group by email
);