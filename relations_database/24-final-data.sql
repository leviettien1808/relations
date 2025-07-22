INSERT INTO company_buildings (name) VALUES
('Headquarters'),
('Branch Office'),
('Research Center');

INSERT INTO teams (name, building_id) VALUES
('Development', 1),
('Marketing', 1),
('Sales', 2),
('Research', 3);

INSERT INTO employees (first_name, last_name, birth_date, email, team_id) VALUES
('Alice', 'Smith', '1990-02-20', 'alice@test.com', 1),
('Bob', 'Johnson', '1988-03-15', 'bob@test.com', 2),
('Charlie', 'Brown', '1992-04-10', 'charlie@test.com', 3),
('Diana', 'Prince', '1985-05-05', 'diana@test.com', 4);

INSERT INTO intranet_accounts (email, password) VALUES
('alice@test.com', 'alice123'),
('bob@test.com', 'bob123'),
('charlie@test.com', 'charlie123'),
('diana@test.com', 'diana123');

INSERT INTO projects (title, deadline) VALUES
('Project Alpha', '2024-12-31'),
('Project Beta', '2025-06-30'),
('Project Gamma', '2025-09-15');

INSERT INTO projects_employees (employee_id, project_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(1, 2),
(2, 3),
(3, 1),
(4, 2);