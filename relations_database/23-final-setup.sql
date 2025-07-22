-- MySQL
CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300) NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL,
    building_id INT,
    FOREIGN KEY (building_id) REFERENCES company_buildings(id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(200),
    password VARCHAR(200) NOT NULL,
    FOREIGN KEY (email) REFERENCES employees(email) ON DELETE CASCADE
);

CREATE TABLE projects_employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    project_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
);


-- Postgres
CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES company_buildings(id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams(id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

CREATE TABLE projects_employees (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(id) ON DELETE CASCADE,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE
);


-- SQLite
CREATE TABLE projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE teams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    building_id INTEGER,
    FOREIGN KEY (building_id) REFERENCES company_buildings(id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    birth_date DATE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    team_id INTERGER DEFAULT 1,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT,
    password TEXT NOT NULL,
    FOREIGN KEY (email) REFERENCES employees(email) ON DELETE CASCADE
);

CREATE TABLE projects_employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    project_id INTEGER,
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
);