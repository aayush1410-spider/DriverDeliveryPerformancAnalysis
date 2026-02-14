# DriverDeliveryPerformancAnalysis
Identify drivers who completed at least 5 deliveries in September 2024 and achieved a completion rate of 90% or higher. The query aggregates deliveries per driver, calculates success rate, and filters results using HAVING conditions.

Problem Statement:
You have a database table deliveries tracking package drop-offs.
Schema:
• id (int, PK)
• driver_id (int)
• delivery_status (varchar: 'COMPLETED', 'FAILED', 'LATE')
• attempt_timestamp (datetime)
Write a SQL query to identify "Reliable Drivers".
A "Reliable Driver" is defined as a driver who has:
1. Completed at least 5 deliveries in the month of September 2024.
2. Maintained a 'COMPLETED' rate of 90% or higher for that month.
Output Columns: driver_id, total_deliveries, success_rate (percentage).
Ordering: Order by success_rate descending.
