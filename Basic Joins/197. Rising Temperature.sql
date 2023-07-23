SELECT W2.id
from Weather W1
INNER JOIN  Weather W2
ON DATEDIFF(DAY, W1.recordDate, W2.recordDate) = 1 AND W1.temperature < W2.temperature;