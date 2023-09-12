
USE adlister_db;
# Shouldn't need to run these(clears the tables if there's stuff in them)!!'
TRUNCATE ads;
TRUNCATE users;
# must do users first! (ads reference user_id)
INSERT INTO users (username, email, password)
VALUES ('user1', 'user1.user@us.mail.com', 'password'),
       ('user2', 'user2.user@us.mail.com', 'password'),
       ('user3', 'user3.user@us.mail.com', 'password');

INSERT INTO ads (user_id, title, description, price, `condition`, platform, genre)
VALUES (1, 'Sonic the Hedgehog 2', 'Sonic 2, its good', '50.99', 'used', 'Sega Genesis', 'Action, platformer'),
       (1, 'Mario 64', 'Mario on Nintendo 64, in pretty good condition', '49.99', 'used', 'Nintendo 64', 'Action, platformer'),
       (2, 'Golden Sun', 'A classic on the GBA', '100.00', 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (2, 'Altered Beast', 'Altered beast', '69.99', 'used', 'Sega Genesis', 'Action, fantasy'),
       (2, 'Fable', 'Fable, classic RPG fantasy game where your choices matter', '35.75', 'used', 'Xbox', 'Action, adventure, RPG');
SELECT * FROM users;
SELECT * FROM ads;