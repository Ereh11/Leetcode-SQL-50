WITH CTE AS 
(
    SELECT customer_id, order_date, customer_pref_delivery_date, 
           DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS RK
    FROM Delivery
)

SELECT ROUND(
                AVG
                (
                    CASE WHEN order_date = customer_pref_delivery_date THEN 1.0  ELSE 0.0 END
                ) * 100.0
         , 2) AS immediate_percentage

FROM CTE
WHERE RK = 1;