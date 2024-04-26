    --Створити таблицю worker (H2)
CREATE TABLE worker (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(1000) NOT NULL CHECK(LENGTH(name) BETWEEN 2 AND 1000),
    birthday DATE CHECK (birthday >= '1901-01-01'),
    level VARCHAR NOT NULL CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    salary INT CHECK (salary > 100 AND salary < 100000)
);

    --(MySQL)
CREATE TABLE worker (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(1000) NOT NULL CHECK(LENGTH(name) BETWEEN 2 AND 1000),
    birthday DATE CHECK (birthday >= '1901-01-01'),
    level VARCHAR(10) NOT NULL CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    salary INT CHECK (salary > 100 AND salary < 100000)
);




    --Створити таблицю client (H2)
CREATE TABLE client (
   id IDENTITY PRIMARY KEY,
   name VARCHAR (1000) NOT NULL CHECK (LENGTH (name) BETWEEN 2 AND 1000)
 );

    --(MySQL)
CREATE TABLE client (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR (1000) NOT NULL CHECK (LENGTH (name) BETWEEN 2 AND 1000)
 );




    --Створити таблицю project (H2)
CREATE TABLE project (
    id IDENTITY PRIMARY KEY,
    client_id INT,
    start_date DATE,
    finish_date DATE,
    FOREIGN KEY (client_id) REFERENCES client(id)
);

    --(MySQL)
CREATE TABLE project (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    start_date DATE,
    finish_date DATE,
    FOREIGN KEY (client_id) REFERENCES client(id)
);




    --Створити таблицю project_worker (H2)
CREATE TABLE project_worker(
    project_id INT,
    worker_id INT,
    PRIMARY KEY (project_id, worker_id),
    FOREIGN KEY (project_id) REFERENCES project(id),
    FOREIGN KEY (worker_id) REFERENCES worker(id)
);  

    --(MySQL) 
CREATE TABLE project_worker(
    project_id INT,
    worker_id INT,
    PRIMARY KEY (project_id, worker_id),
    FOREIGN KEY (project_id) REFERENCES project(id),
    FOREIGN KEY (worker_id) REFERENCES worker(id)
);  