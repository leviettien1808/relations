INSERT INTO cities (name) VALUES
('Los Angeles'),
('Chicago'),
('Houston'),
('Phoenix');

INSERT INTO addresses (street, house_number, city_id) VALUES
('Sunset Boulevard', '123', 1),
('Michigan Avenue', '456', 2),
('Main Street', '789', 3),
('Central Avenue', '101', 4),
('Broadway', '202', 2),
('Elm Street', '303', 3);

INSERT INTO users (first_name, last_name, email, address_id) VALUES
('Bob', 'Brown', 'bob@gmail.com', 4),
('Charlie', 'Davis', 'charlie@gmail.com', 5),
('Eve', 'White', 'eve@gmail.com', 6),
('Frank', 'Black', 'frank@gmail.com', 1);