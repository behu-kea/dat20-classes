# CREATE SCHEMA product;

USE product;

#CREATE TABLE product (
#	id INT,
#    price INT,
#    name VARCHAR(30),
#    description VARCHAR(255)
#);

INSERT INTO product(id, price, name, description) VALUES (1, 200, 'test title', 'ashdajshdvjahsvdjhasvdjasd');
INSERT INTO product(id, price, name, description) VALUES (2, 599, 'test title13', 'asdklasd');
INSERT INTO product(id, price, name, description) VALUES (3, 12381923, 'test title1', 'alksdmlksn lasl jka skdj da');
INSERT INTO product(id, price, name, description) VALUES (4, 1, 'test title2', 'asd mka sdjk askd ajks dads');


INSERT INTO product(id, price) VALUES (2, 400);
SElECT * FROM product;

SElECT avg(price) FROM product;

