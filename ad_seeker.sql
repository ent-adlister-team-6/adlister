USE adlister_db;
# Shouldn't need to run these(clears the tables if there's stuff in them)!!'
#if Truncating, do ads first

# must do users first! (ads reference user_id)
INSERT INTO users (username, email, bio, location, password)
VALUES ('Killian', 'killian.rowley@us.mail.com', 'Nice to meet you!', 'San Antonio, TX', 'password'),
       ('Kaitelyn', 'Kaiteyln09noelle@us.mail.com', 'Nice to meet you!', 'San Antonio, TX', 'password'),
       ('Halen', 'wiggle.demon@us.mail.com', 'woof!', 'San Antonio, TX', 'password'),
       ('Bowie', 'bowbow@us.mail.com', 'Nice to meet you!', 'San Antonio, TX', 'password'),
       ('', 'Kaiteyln09noelle@us.mail.com', 'Nice to meet you!', 'San Antonio, TX', 'password');

INSERT INTO ads (user_id, title, description, price, `condition`, platform, genre)
VALUES (101, 'Sonic the Hedgehog 1', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (101, 'Sonic the Hedgehog 2', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (101, 'Sonic the Hedgehog 3', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (101, 'Sonic & Knuckles', 'Sonic', 99.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (101, 'Mario 64', 'Mario on Nintendo 64, in pretty good condition', 99.99, 'used', 'Nintendo 64', 'Action, platformer'),
       (101, 'Golden Sun', 'A classic on the GBA', 99.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (101, 'Golden Sun: The Lost Age', 'A classic on the GBA', 99.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (101, 'Altered Beast', 'Altered beast', 99.99, 'used', 'Sega Genesis', 'Action, fantasy'),
       (101, 'Fable', 'Fable, classic RPG fantasy game where your choices matter', 99.99, 'used', 'Xbox', 'Action, adventure, RPG'),
       (101, 'Final Fantasy VII', 'Final Fantasy 7', 99.99, 'used', 'Playstation', 'RPG, Adventure'),
       (101, 'Final Fantasy VIII', 'Final Fantasy 8', 99.99, 'used', 'Playstation', 'RPG, Adventure'),
       (101, 'Final Fantasy IX', 'Final Fantasy 9', 99.99, 'used', 'Playstation', 'RPG, Adventure'),
       (101, 'Final Fantasy X', 'Final Fantasy 10', 99.99, 'used', 'Playstation 2', 'RPG, Adventure'),
       (101, 'Kingdom Hearts', 'Kingdom Hearts', 99.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (101, 'Kingdom Hearts 2', 'Kingdom Hearts', 99.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (101, 'Kingdom Hearts: Final Mix', 'Kingdom Hearts', 99.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (101, 'Sonic the Hedgehog 3', 'Sonic', 89.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (101, 'Sonic & Knuckles', 'Sonic', 95.99, 'used', 'Sega Genesis', 'Action, platformer'),
       (101, 'Mario 64', 'Mario on Nintendo 64, in pretty good condition', 69.99, 'used', 'Nintendo 64', 'Action, platformer'),
       (101, 'Golden Sun', 'A classic on the GBA', 59.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (101, 'Golden Sun: The Lost Age', 'A classic on the GBA', 69.99, 'used', 'Gameboy Advanced', 'RPG, Adventure, Puzzle'),
       (101, 'Altered Beast', 'Altered beast', 70.99, 'used', 'Sega Genesis', 'Action, fantasy'),
       (101, 'Fable', 'Fable, classic RPG fantasy game where your choices matter', 45.99, 'used', 'Xbox', 'Action, adventure, RPG'),
       (101, 'Final Fantasy VII', 'Final Fantasy 7', 299.99, 'new', 'Playstation', 'RPG, Adventure'),
       (101, 'Final Fantasy VIII', 'Final Fantasy 8', 199.99, 'used', 'Playstation', 'RPG, Adventure'),
       (101, 'Final Fantasy IX', 'Final Fantasy 9', 90.99, 'used', 'Playstation', 'RPG, Adventure'),
       (101, 'Final Fantasy X', 'Final Fantasy 10', 67.99, 'used', 'Playstation 2', 'RPG, Adventure'),
       (101, 'Kingdom Hearts', 'Kingdom Hearts', 120.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (101, 'Kingdom Hearts 2', 'Kingdom Hearts', 114.99, 'used', 'Playstation 2', 'RPG, Adventure, Action'),
       (101, 'Kingdom Hearts: Final Mix', 'Kingdom Hearts', 150.99, 'used', 'Playstation 2', 'RPG, Adventure, Action');
SELECT * FROM users;
SELECT * FROM ads;