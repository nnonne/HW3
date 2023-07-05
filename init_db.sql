CREATE TABLE worker(
id IDENTITY PRIMARY KEY,
name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) > 1),
birthday DATE CHECK (birthday >= '1901-01-01'),
level VARCHAR NOT NULL CHECK level IN ('Trainee', 'Junior', 'Middle', 'Senior'),
salary INTEGER CHECK (salary <= 100000 AND salary >= 100)
);

CREATE TABLE client(
id IDENTITY PRIMARY KEY,
name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) > 1)
);

CREATE TABLE project(
id IDENTITY PRIMARY KEY,
client_id INTEGER NOT NULL,
start_date DATE,
finish_date DATE,
CONSTRAINT client_id_fk FOREIGN KEY (client_id) REFERENCES client (id),
CONSTRAINT project_duration CHECK DATEDIFF(MONTH, start_date, finish_date) BETWEEN 1 AND 100
);

CREATE TABLE project_worker(
project_id BIGINT NOT NULL,
worker_id BIGINT NOT NULL,
PRIMARY KEY(project_id, worker_id),
FOREIGN KEY(project_id) REFERENCES project(id),
FOREIGN KEY(worker_id) REFERENCES worker(id)
);