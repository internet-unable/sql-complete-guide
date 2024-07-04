CREATE INDEX salary_index ON users(salary);

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    --   id SERIAL PRIMARY KEY, -- Postgresql
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL,
    salary INT CHECK (salary > 0),
    INDEX salary_index(salary) -- another way how to create index, when creating table
);