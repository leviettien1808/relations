-- MySQL
CREATE TABLE cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(50) NOT NULL,
    city_id INT NOT NULL
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id INT NOT NULL,
    -- FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE RESTRICT
    -- FOREIGN KEY (address_id) REFERENCES addresses (id) -- ON DELETE NO ACTION ~ default
    FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE
);

-- Postgres
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(50) NOT NULL,
    city_id INT NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    -- address_id INT REFERENCES addresses(id) ON DELETE RESTRICT
    -- address_id INT REFERENCES addresses(id) -- ON DELETE NO ACTION ~ default
    address_id INT REFERENCES addresses(id) ON DELETE CASCADE
);

-- SQLite
CREATE TABLE cities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE addresses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    street TEXT NOT NULL,
    house_number TEXT NOT NULL,
    city_id INTEGER NOT NULL
);

-- Enable foreign key support
-- PRAGMA foreign_keys = ON;
-- PRAGMA foreign_keys = OFF;
-- PRAGMA foreign_keys;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL,
    address_id INTEGER NOT NULL,
    -- FOREIGN KEY (address_id) REFERENCES addresses(id) ON DELETE RESTRICT
    -- FOREIGN KEY (address_id) REFERENCES addresses(id) -- ON DELETE NO ACTION ~ default
    FOREIGN KEY (address_id) REFERENCES addresses(id) ON DELETE CASCADE
);