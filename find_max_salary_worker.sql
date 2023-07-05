SELECT name, salary FROM worker
WHERE salary = (MAX(salary) FROM worker);