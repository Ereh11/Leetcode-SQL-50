SELECT TOP(1) name AS results
FROM 
(
    SELECT TOP(1) WITH TIES COUNT(Users.user_id) AS count_rating, name
    FROM MovieRating
    INNER JOIN Users ON MovieRating.user_id = Users.user_id
    GROUP BY Users.user_id, name
    ORDER BY count_rating DESC, name
) AS TEMP1

UNION ALL

SELECT TOP(1) title AS results
FROM 
(
    SELECT TOP(1) WITH TIES Movies.movie_id, AVG(rating * 1.0) AS avg_rate, title
    FROM MovieRating
    INNER JOIN Movies ON MovieRating.movie_id = Movies.movie_id
    WHERE LEFT(created_at, 7) = '2020-02'
    GROUP BY Movies.movie_id, title
    ORDER BY avg_rate DESC, title
) AS TEMP2