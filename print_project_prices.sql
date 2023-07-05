SELECT project.name, SUM(worker.salary) * DATEDIFF(MONTH, project.start_date, project.finish_date) AS price
FROM project
JOIN project_worker ON project.id = project_worker.project_id
JOIN worker ON project_worker.worker_id = worker.id
GROUP BY project.name
ORDER BY price DESC;