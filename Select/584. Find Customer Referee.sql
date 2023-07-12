/* Write your T-SQL query statement below */
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL; 
-- ADD "referee_id IS NULL", BECAUSE THERE ARE THREE CASES TRUE, FALSE, UNKOWN IN T-SQL