SELECT *
FROM addresses AS a
LEFT JOIN users AS u ON u.address_id = a.id
LEFT JOIN cities AS c ON c.id = a.city_id;