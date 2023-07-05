SELECT name, start_date, finish_date FROM project
WHERE DATEDIFF(MONTH, start_date, finish_date)  = (
    SELECT MAX(duration)
    FROM (
        SELECT DATEDIFF(MONTH, start_date, finish_date) AS duration
        FROM project
    ) AS subquery
);