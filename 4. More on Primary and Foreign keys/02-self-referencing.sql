-- DROP TABLE projects_employees;
-- DROP TABLE intranet_accounts;
-- DROP TABLE projects;
-- DROP TABLE employees;
-- DROP TABLE teams;
-- DROP TABLE company_buildings;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    supervisor_id INT REFERENCES employees(id) ON DELETE SET NULL
);

INSERT INTO employees (first_name, last_name, supervisor_id)
VALUES
    ('Julie', 'Some', NULL),
    ('Manuel', 'Some', 1),
    ('Alex', 'Some', 2);

SELECT * FROM employees AS e1
INNER JOIN employees AS e2 ON e1.supervisor_id = e2.id; -- you can join tables with itself