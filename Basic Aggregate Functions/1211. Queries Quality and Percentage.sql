SELECT query_name, 
       ROUND(SUM(rating / CAST(position AS DECIMAL)) / SUM(1.0), 2) AS quality,
       ROUND(SUM(CASE WHEN rating IN (1, 2) THEN 1.0 ELSE 0.0 END) / SUM(1.0) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;