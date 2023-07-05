INSERT INTO worker
(name, birthday, level, salary)
VALUES
('Anna', '1976-01-01', 'Middle', 5000),
('Brennan', '1984-02-02', 'Junior', 1000),
('Candice', '1996-03-03', 'Trainee', 500),
('Derek', '1997-03-03', 'Middle', 1000),
('Evan', '1978-04-04', 'Senior', 10000),
('Fred', '1979-05-05', 'Senior', 10000),
('Grant', '1983-06-06', 'Senior', 10000),
('Hanna', '1995-07-07', 'Trainee', 500),
('Iris', '1991-08-08', 'Trainee', 500),
('Julian', '1985-09-09', 'Junior', 1000),
('Katie', '1979-10-10', 'Middle', 5000);

INSERT INTO client
(name)
VALUES
('Leia'),
('Margaret'),
('Neville'),
('Owen'),
('Peter');

INSERT INTO project
(name, client_id, start_date, finish_date)
VALUES
('Project1', 1, '2023-01-01', '2023-02-01'),
('Project2', 2, '2023-01-01', '2023-03-01'),
('Project3', 3, '2023-01-01', '2023-04-01'),
('Project4', 4, '2023-01-01', '2023-05-01'),
('Project5', 4, '2023-01-01', '2023-06-01'),
('Project6', 1, '2023-01-01', '2023-07-01'),
('Project7', 2, '2023-01-01', '2023-08-01'),
('Project8', 2, '2023-01-01', '2023-09-01'),
('Project9', 4, '2023-01-01', '2023-10-01'),
('Project10', 5, '2023-01-01', '2023-10-01');

INSERT INTO project_worker
(project_id, worker_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(4, 9),
(4, 10),
(4, 1),
(5, 4),
(5, 2),
(5, 3),
(6, 8),
(6, 3),
(6, 5),
(6, 7),
(6, 2),
(8, 9),
(8, 4),
(9, 3),
(9, 4),
(9, 1),
(9, 5),
(9, 6),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8);