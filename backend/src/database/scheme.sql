//create character table

CREATE TABLE character (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    birthdate VARCHAR(255) NOT NULL,
    artwork TEXT NOT NULL,
    description TEXT NOT NULL,
    quirk TEXT NOT NULL,
    quirk_description TEXT NOT NULL
)


INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Izuku', 'Midoriya', 'July 15', 'https://i.imgur.com/PemGDxr.png'
, 'Although he was born without a quirk, All Might discovered his hidden heroic qualities and inherited the quirk One For All from him. His desire to save people is stronger than anyone elses. He can use the multiple quirks of the previous One For All inheritors',
 'One For All','Was a transferable Quirk that could be passed on from one user to the next Its, The core of One For All has grown in strength from being passed from user to user and add the quirk of previous users.');


INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Katsuki', 'Bakugo', 'April 20', 'https://i.imgur.com/BHx0mKB.png',
'Deku childhood friend. He is a confident man with outstanding intelligence, physical strength, and fighting sense, and has a strong desire to become the No. 1 hero. His quirk is the ability to explode by releasing nitro-like sweat from the sweat glands in his palms.'
,'Explosion','Katsuki can secrete nitroglycerin-like sweat from his palms and ignite it to create explosions. He can also use his explosions to propel himself through the air.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Ochaco', 'Uraraka', 'December 27', 'https://i.imgur.com/9Sk5Tq3.png',
'He has a bright and honest personality, and is a good friend of Deku. He came alone from his hometown to attend U.A. High School. His quirk is the ability to put anything he touches into a state of zero gravity with the pads on his fingertips.', 
'Zero Gravity', 'Ochaco can make any object she touches with the pads of her fingertips float, and can send them flying in any direction she wishes. She can also make herself float, but this ability makes her nauseous if she uses it too much.');


INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(1, 'Deku', ' ', 'Deku is a student at U.A. High School training to become a Pro Hero. His quirk is One For All The core of One For All has grown in strength from being passed from user to user and add the quirk of previous users.', 'https://i.imgur.com/Pcd2sZM.png', FALSE)

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(2, 'Dynamight', ' ', ' Great Explosion Murder God Dynamight is a student in Class 2-A at U.A. High School, training to become a Pro Hero. His quirk is the ability to explode by releasing nitro-like sweat from the sweat glands in his palms.', 'https://i.imgur.com/JJW3hNC.png', FALSE)

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(3, 'Uravity', ' ', 'Uravity is a student in Class 2-A , His quirk is the ability to put anything he touches into a state of zero gravity with the pads on his fingertips, she can use Gunhead martial arts, and use combine moves with Froppy','https://i.imgur.com/22c0Go6.png' ,FALSE)


CREATE TABLE heroes (
    id SERIAL PRIMARY KEY,
    character_id INTEGER REFERENCES character(id) NOT NULL,
    hero_name VARCHAR(255) NOT NULL,
    hero_type VARCHAR(255) NOT NULL,
    hero_description TEXT NOT NULL,
    hero_artwork TEXT NOT NULL,
    is_ProHero BOOLEAN NOT NULL
)


CREATE TABLE villains (
    id SERIAL PRIMARY KEY,
    character_id INTEGER REFERENCES character(id) NOT NULL,
    villain_name VARCHAR(255) NOT NULL,
    villain_description VARCHAR(255) NOT NULL,
    villain_artwork VARCHAR(255) NOT NULL
)


CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    song_name TEXT NOT NULL,
    song_artist TEXT NOT NULL,
    song_artwork TEXT NOT NULL,
    id_song_video TEXT NOT NULL,
    song_video TEXT NOT NULL,
    is_opening BOOLEAN NOT NULL,
    is_ending BOOLEAN NOT NULL
)

INSERT INTO songs (song_name, song_artist, song_artwork, id_song_video, song_video, is_opening, is_ending) VALUES ('Curtain_Call', 'Yuuri',
 'https://i.imgur.com/YJPsq0k.png', 'OP13', 'https://www.dropbox.com/scl/fi/ch12oohym5zp1wtf11c5w/opening13.mp4?rlkey=qp9dt46o98tritoab80jiono7&st=tu4hpirm&dl=1', TRUE, FALSE)

INSERT INTO songs (song_name, song_artist, song_artwork, id_song_video, song_video, is_opening, is_ending) VALUES ('Bokurano', 'Eve',
 'https://i.imgur.com/a2zvj35.jpeg', 'OP11', 'https://www.dropbox.com/scl/fi/sokik562nrojntwrrpw6n/opening11.mp4?rlkey=g6td20o7o6kakvlwz6naicm5c&st=xa4lhu9w&dl=1', TRUE, FALSE)