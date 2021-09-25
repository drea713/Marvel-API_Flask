CREATE TABLE "character"(
	character_id SERIAL PRIMARY KEY,
	char_name VARCHAR(50),
	description VARCHAR(100),
	comics_appeared_in INTEGER,
	super_power VARCHAR(50),
	date_created DATE,
	char_owner VARCHAR(50)
);

CREATE TABLE "user"(
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(50),
	email VARCHAR(50),
	user_password VARCHAR(50),
	user_token INTEGER,
	user_date_created DATE,
	character_relationship VARCHAR(50)
);

INSERT INTO "user"(user_id, user_name, email, user_password, user_token, user_date_created, character_relationship)
VALUES (1, 'Andrea', 'andreap@codingtemple.com', 12345, 7, '2021-07-13', 'lokie'), (2, 'Brittany', 'brittanyj@codingtemple.com', 09876, 10, '2021-12-20', 'Black Widow'), (3, 'Kevin', 'kevinn@codingtemple.com', 74859, 4, '2021-04-25', 'Spider-Man'), (4, 'Tammie', 'tammiehall@codingtemple.com', 39420, 8, '2021-08-21', 'Falcon'), (5, 'Caleb', 'calebh@codingtemple.com', 32344, 9, '2021-11-17', 'Captain America')
RETURNING *;

INSERT INTO "character"(character_id, char_name, description, comics_appeared_in, super_power, date_created, char_owner)
VALUES (5, 'Captain America', 'First Avenger, received the Super Soldier Serum developed by Dr. Abraham Erskine.', '1','Super-Soldier Serum', '1940-12-01', 'Caleb')
RETURNING *;