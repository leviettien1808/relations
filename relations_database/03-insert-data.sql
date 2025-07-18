INSERT INTO cities (name) VALUES
('Berlin'),
('New York'),
('London');

INSERT INTO addresses (street, house_number, city_id) VALUES
('Alexanderplatz', '1', 1),
('Broadway', '10', 2),
('Baker Street', '221B', 3);

INSERT INTO users (first_name, last_name, email, address_id) VALUES
('John', 'Doe', 'jone@gmail.com', 1),
('Jane', 'Smith', 'jane@gmail.com', 2),
('Alice', 'Johnson', 'alice@gmail.com', 3);