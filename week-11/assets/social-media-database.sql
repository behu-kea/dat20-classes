CREATE DATABASE social_media_database;

USE social_media_database;

CREATE TABLE post (
	id INT,
	title VARCHAR(60),
	content VARCHAR(256),
	date DATE
);

INSERT INTO post (id, title, content, date) VALUES (1, 'A first time poster', 'This is my first post ever, very proud', '2021-03-22');
INSERT INTO post (id, title, content, date) VALUES (2, 'Beautiful day', 'the sun is shining the weather is sweet. Make you wanna move', '2032-03-22');
INSERT INTO post (id, title, content, date) VALUES (3, 'Mmmm food', 'Spaghetti', '2032-03-22');
INSERT INTO post (id, title, content, date) VALUES (4, 'I am Hungry now', 'Sandwich', '2032-03-22');
INSERT INTO post (id, title, content, date) VALUES (5, 'Keep thinking of food', 'Baked beans', '2032-03-22');
