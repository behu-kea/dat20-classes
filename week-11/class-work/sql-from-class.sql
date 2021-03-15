CREATE SCHEMA product_database;

USE product_database;

CREATE TABLE product (
	id INT,
    price INT,
    name VARCHAR(30),
    description VARCHAR(255)
);

INSERT INTO product(id, price, name, description) VALUES (1, 499, 'test title', 'asdhasjdkbkasd asd');

INSERT INTO product (id, price) VALUES (1, 100);


