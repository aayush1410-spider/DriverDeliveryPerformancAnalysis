SELECT driver_id,COUNT(*) AS total_deliveries,
       CAST(SUM(CASE WHEN delivery_status = 'COMPLETED' THEN 1 ELSE 0 END) * 100.0/ COUNT(*) AS DECIMAL(5,2)) AS successRate
FROM deliveries WHERE attempt_timestamp >= '2024-09-01' AND attempt_timestamp <  '2024-10-01'
GROUP BY driver_id
HAVING SUM(CASE WHEN delivery_status = 'COMPLETED' THEN 1 ELSE 0 END) >= 5
   AND (SUM(CASE WHEN delivery_status = 'COMPLETED' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) >= 90
ORDER BY successRate DESC;
