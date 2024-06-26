CREATE TABLE company_buildings (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES company_buildings(id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(300) NOT NULL,
    team_id INT REFERENCES teams(id) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(300) NOT NULL
);

INSERT INTO company_buildings (name)
VALUES 
  ('Main Building'), 
  ('Research Lab'), 
  ('Darkroom');

INSERT INTO teams (name, building_id)
VALUES 
  ('Admin', 1), 
  ('Data Analysts', 3),
  ('R&D', 2);

INSERT INTO employees 
  (first_name, last_name, birthdate, email, team_id)
VALUES 
  ('Julie', 'Barnes', '1988-10-01', 'julie@test.com', 3),
  ('Max', 'Schwarz', '1989-06-10', 'max@test.com', 1),
  ('Manuel', 'Lorenz', '1987-01-29', 'manu@test.com', 2);

INSERT INTO intranet_accounts (email, password)
VALUES 
  ('max@test.com', 'abcae1'),
  ('manu@test.com', 'fdasfdas1'),
  ('julie@test.com', 'adsfsaf3');

-- DROP TABLE company_buildings;
-- DROP TABLE teams;
-- DROP TABLE employees;
-- DROP TABLE intranet_accounts;