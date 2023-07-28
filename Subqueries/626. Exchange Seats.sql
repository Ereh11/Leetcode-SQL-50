SELECT (CASE WHEN id % 2 = 0 AND (id != cnt OR cnt % 2 = 0)  THEN id - 1
             WHEN id % 2 != 0 AND (id != cnt OR cnt % 2 = 0)  THEN id + 1 
             ELSE id END) AS id, student

FROM Seat, (SELECT COUNT(*) AS cnt FROM Seat) AS TEMP
ORDER BY id;