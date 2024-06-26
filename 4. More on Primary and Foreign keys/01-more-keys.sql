-- Intermediate table => n:n relation
CREATE TABLE projects_employees(
    employee_id INT REFERENCES employees(id) ON DELETE CASCADE,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    PRIMARY KEY (employee_id, project_id)
);