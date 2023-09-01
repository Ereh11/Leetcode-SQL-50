SELECT ROUND(1.0 * SUM(Ins.tiv_2016), 2) AS tiv_2016
FROM Insurance AS Ins

WHERE CONCAT(Ins.lat, ' ', Ins.lon) NOT IN
(
    SELECT CONCAT(lat, ' ', lon)
    FROM Insurance
    WHERE Ins.pid != pid
)

AND Ins.tiv_2015 IN
(
    SELECT tiv_2015
    FROM Insurance
    WHERE Ins.pid != pid
)