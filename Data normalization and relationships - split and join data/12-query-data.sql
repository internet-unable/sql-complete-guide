-- SELECT employees.id, employees.first_name, employees.last_name, projects.title FROM employees
-- LEFT JOIN projects_employees ON projects_employees.employee_id = employees.id
-- LEFT JOIN projects ON projects_employees.project_id = projects.id;

-- SELECT employees.id, employees.first_name, employees.last_name, teams.name FROM employees
-- INNER JOIN teams ON employees.team_id = teams.id
-- WHERE teams.id = 2;

SELECT employees.id, employees.first_name, employees.last_name, company_buildings.name FROM employees
INNER JOIN teams ON employees.team_id = teams.id
INNER JOIN company_buildings ON teams.building_id = company_buildings.id
WHERE company_buildings.id = 3;