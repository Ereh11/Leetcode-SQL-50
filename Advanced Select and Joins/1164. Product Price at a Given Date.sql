WITH CTE AS 
(
    SELECT DISTINCT product_id, 
    LAST_VALUE(new_price) OVER(PARTITION BY product_id ORDER BY change_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS price

    FROM Products
    WHERE change_date <= '2019-08-16'
)

SELECT DISTINCT Products.product_id, ISNULL(price, 10) AS price
FROM Products
LEFT JOIN CTE ON Products.product_id = CTE.product_id