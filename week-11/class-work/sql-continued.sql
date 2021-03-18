# sql continued
use product_database;

# update
UPDATE product SET price = 23 WHERE id = 1;
UPDATE product SET price = 1 WHERE id = 2;

UPDATE product SET price = 23;

# delete
DELETE FROM product WHERE id = 1;

DELETE FROM product;

# primary key

CREATE TABLE product_primary (    
	id INT NOT NULL AUTO_INCREMENT,
	price INT, 
    name VARCHAR(30), 
    description VARCHAR(255),
	PRIMARY KEY (id)
);

INSERT INTO product_primary(id, price, name, description) VALUES (1, 200, "asd", "asdhjb");
INSERT INTO product_primary(id, price, name, description) VALUES (2, 6778, "asjdk", "ihasodijoasjdo");
INSERT INTO product_primary(price, name, description) VALUES (6778, "asjdk", "ihasodijoasjdo");


CREATE TABLE product_primary_not_null (    
	id INT NOT NULL AUTO_INCREMENT,
	price INT, 
    name VARCHAR(30) not null, 
    description VARCHAR(255),
	PRIMARY KEY (id)
);

INSERT INTO product_primary_not_null(price, name, description) VALUES (6778,'asd',  "ihasodijoasjdo");


CREATE TABLE product_foreign_key (    
	id INT NOT NULL AUTO_INCREMENT,
    price INT, 
    name VARCHAR(30), 
    description VARCHAR(255),
	review_id INT,
	PRIMARY KEY (id),
	FOREIGN KEY (review_id) REFERENCES review(id)
);


CREATE TABLE review (    
	id INT NOT NULL AUTO_INCREMENT,
    text VARCHAR(255),
	PRIMARY KEY (id)
);


INSERT INTO review(text) VALUES ("fantastic food");
INSERT INTO review(text) VALUES ("awful food");
INSERT INTO review(text) VALUES ("marvellous food");
INSERT INTO review(text) VALUES ("marvellous watch");

INSERT INTO product_foreign_key(price, name, description, review_id) VALUES (6778, 'watch', "good watch", 4);
INSERT INTO product_foreign_key(price, name, description, review_id) VALUES (35, 'lasagne', "good lasagne", 2);

