WITH CTE AS
(
    SELECT player_id, MIN(event_date) AS event_date 
    FROM Activity 
    GROUP BY player_id
)

SELECT ROUND(1.0 * COUNT(A.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM CTE
INNER JOIN Activity A
ON CTE.player_id = A.player_id AND DATEADD(DAY, 1, CTE.event_date) = A.event_date