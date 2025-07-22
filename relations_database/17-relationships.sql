-- MySQL
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(200),
    password VARCHAR(200) NOT NULL,
    FOREIGN KEY (email) REFERENCES employees(email) ON DELETE CASCADE
);


-- Postgres
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);


-- SQLite
CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    birth_date DATE NOT NULL,
    email TEXT UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT,
    password TEXT NOT NULL,
    FOREIGN KEY (email) REFERENCES employees(email) ON DELETE CASCADE
);