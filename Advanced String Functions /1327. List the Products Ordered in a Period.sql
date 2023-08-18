SELECT product_name, SUM(unit) AS 'unit'
FROM Products P
INNER JOIN Orders O ON P.product_id = O.product_id
WHERE LEFT(order_date, 7) = '2020-02'
GROUP BY product_name
HAVING SUM(unit) >= 100;