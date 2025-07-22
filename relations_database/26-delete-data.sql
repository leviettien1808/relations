-- MySQL/Postgres
DELETE FROM company_buildings
WHERE id = 2;

-- SQLite
PRAGMA foreign_keys = ON;
DELETE FROM company_buildings
WHERE id = 2;

-- MySQL/Postgres/SQLite
DELETE FROM employees
WHERE id = 1;