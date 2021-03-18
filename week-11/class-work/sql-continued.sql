use product_database;

UPDATE product SET price = 23 WHERE id = 1;

UPDATE product set name = 'television' WHERE name = 'test title';

DELETE FROM product WHERE name = 'television';

DELETE FROM product;

CREATE TABLE product_primary (    
  id INT NOT NULL AUTO_INCREMENT,
    price INT, 
    name VARCHAR(30), 
    description VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO product_primary(price, description) VALUES (123, 'great tv');

CREATE TABLE product_primary_null (    
  id INT NOT NULL AUTO_INCREMENT,
    price INT,
    name VARCHAR(30) NOT NULL, 
    description VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO product_primary_null(price, description) VALUES (123, 'great tv');


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


INSERT INTO product_foreign_key(price, name,  description) VALUES (123, 'tv', 'great tv');
INSERT INTO review(text) VALUES ('Fine desing. 4/5 stars from me');
INSERT INTO review(text) VALUES ('ugly television');

INSERT INTO product_foreign_key(price, name,  description, review_id) VALUES (123, 'show', 'fine show', 2);

INSERT INTO review(text) VALUES ('This coffee is so great!');
INSERT INTO product_foreign_key(price, name,  description, review_id) VALUES (799, 'coffee', 'fine coffee', 3);


