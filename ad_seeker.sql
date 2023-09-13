USE adlister_db;
# Shouldn't need to run these(clears the tables if there's stuff in them)!!'
#if Truncating, do ads first
TRUNCATE ads;
TRUNCATE users;
# must do users first! (ads reference user_id)
INSERT INTO users (username, email, bio, location, password)
VALUES ('user1', 'user1.user@us.mail.com', 'I am User1', 'This database I guess', 'password'),
       ('user2', 'user2.user@us.mail.com', 'I am User2', 'This database I guess', 'password'),
       ('user3', 'user3.user@us.mail.com', 'I am User3', 'This database I guess', 'password');

INSERT INTO ads (user_id, title, description, price, `condition`, platform, genre)
VALUES (4, 'Sonic the Hedgehog 1', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (4, 'Sonic the Hedgehog 2', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (4, 'Sonic the Hedgehog 3', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (4, 'Sonic & Knuckles', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (4, 'Mario 64', 'Mario on Nintendo 64, in pretty good condition', 99.99, 'used', 'Nintendo 64', 'Action, platformer'),
       (5, 'Golden Sun', 'A classic on the GBA', 99.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (5, 'Golden Sun: The Lost Age', 'A classic on the GBA', 99.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (5, 'Altered Beast', 'Altered beast', 99.99, 'used', 'Sega Genesis', 'Action, fantasy'),
       (5, 'Fable', 'Fable, classic RPG fantasy game where your choices matter', 99.99, 'used', 'Xbox', 'Action, adventure, RPG'),
       (5, 'Final Fantasy VII', 'Final Fantasy 7', 99.99, 'used', 'Playstation', 'RPG, Adventure'),
       (5, 'Final Fantasy VIII', 'Final Fantasy 8', 99.99, 'used', 'Playstation', 'RPG, Adventure'),
       (5, 'Final Fantasy IX', 'Final Fantasy 9', 99.99, 'used', 'Playstation', 'RPG, Adventure'),
       (3, 'Final Fantasy X', 'Final Fantasy 10', 99.99, 'used', 'Playstation 2', 'RPG, Adventure'),
       (3, 'Kingdom Hearts', 'Kingdom Hearts', 99.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (3, 'Kingdom Hearts 2', 'Kingdom Hearts', 99.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (3, 'Kingdom Hearts: Final Mix', 'Kingdom Hearts', 99.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (4, 'Sonic the Hedgehog 3', 'Sonic', 89.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (4, 'Sonic & Knuckles', 'Sonic', 95.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (4, 'Mario 64', 'Mario on Nintendo 64, in pretty good condition', 69.99, 'used', 'Nintendo 64', 'Action, platformer'),
       (5, 'Golden Sun', 'A classic on the GBA', 59.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (5, 'Golden Sun: The Lost Age', 'A classic on the GBA', 69.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (5, 'Altered Beast', 'Altered beast', 70.99, 'used', 'Sega Genesis', 'Action, fantasy'),
       (5, 'Fable', 'Fable, classic RPG fantasy game where your choices matter', 45.99, 'used', 'Xbox', 'Action, adventure, RPG'),
       (5, 'Final Fantasy VII', 'Final Fantasy 7', 299.99, 'new', 'Playstation', 'RPG, Adventure'),
       (5, 'Final Fantasy VIII', 'Final Fantasy 8', 199.99, 'used', 'Playstation', 'RPG, Adventure'),
       (5, 'Final Fantasy IX', 'Final Fantasy 9', 90.99, 'used', 'Playstation', 'RPG, Adventure'),
       (3, 'Final Fantasy X', 'Final Fantasy 10', 67.99, 'used', 'Playstation 2', 'RPG, Adventure'),
       (3, 'Kingdom Hearts', 'Kingdom Hearts', 120.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (3, 'Kingdom Hearts 2', 'Kingdom Hearts', 114.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (3, 'Kingdom Hearts: Final Mix', 'Kingdom Hearts', 150.99, 'used', 'Playstation 2', 'RPG, Adventure, Action');
SELECT * FROM users;
SELECT * FROM ads;