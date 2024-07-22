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




INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Shoto', 'Todoroki', 'January 11', 'https://i.imgur.com/ONbpM2S.png',
'He was admitted to Yuei High School on recommendation and is a top-class individual in both intelligence and physical strength. His "quirk" is "half cold, half burning," which allows him to freeze from the right and heat from the left. His father is Endeavor, the current No. 1 professional hero.',
'Half-Cold Half-Hot', 'Shoto can use his left side to freeze things and his right side to burn them. He can also use both sides at once to create a powerful steam attack.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Tenya', 'Iida', 'August 22', 'https://i.imgur.com/jiX0FbD.png',
'A well-behaved boy who becomes Deku classmate. Born and raised in a family of heroes, he is something of an elite. His quirk is an "engine" that allows him to run at incredible speeds using an organ in his calf.', 'Engine', 'Tenya has engines in his calves that allow him to move at superhuman speeds. He can also use his engines to create powerful kicks and propel himself through the air.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Tsuyu', 'Asui', 'February 12', 'https://i.imgur.com/OahGEf3.png',
'He has a strong will and a cheerful personality, saying what he wants to say right away. His "quirk" is "Frog", which means he can move freely in the water, attack with his tongue, jump high, and stick to walls, which are all frog-like abilities.'
,'Frog', 'Tsuyu has the abilities of a frog, including a long, sticky tongue, the ability to stick to walls, and the ability to jump long distances. She can also secrete a poisonous mucus from her skin that can paralyze her enemies.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Yagi', 'Toshinori', 'June 10', 'https://i.imgur.com/TF1tEdc.png',
'He is the No. 1 hero in the world, known as "All Might." He is a symbol of peace and justice, and has saved countless people with his overwhelming power. He is a teacher at Yuei High School, where he teaches the next generation of heroes.', 'One For All', 'All Might can use One For All to enhance his strength, speed, and agility to superhuman levels. He can also use it to fire powerful energy blasts and create powerful gusts of wind.');



INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Tomura', 'Shigaraki', 'March 29', 'https://i.imgur.com/Uf3gEpB.png',
'A man with the belief that he will "destroy everything." He is in fact the grandson of Shimura Nana, the seventh successor of One For All. He has a history of killing his family with his "quirk" when he was a child. He was raised by All For One as his successor, and after undergoing a strengthening surgery by a doctor, he gained the multiple "quirks" that All For One had, as well as the power of All Might in his prime.'
,'Decay', 'Tomura can disintegrate anything he touches with all five fingers of his hand. He can also use his quirk to disintegrate things from a distance by using all five fingers on his hand to touch the air.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Momo', 'Yaoyorozu', 'September 23', 'https://i.imgur.com/ZUcKb8J.png',
'She has top class grades and outstanding proportions that are unusual for a first year high school student. Her "quirk" is "creation," which allows her to create anything except living things.',
'Creation', 'Momo can create anything she wants from her body as long as she knows the molecular structure of the object she wants to create. She can also create objects that are more complex than her own body, but doing so requires her to eat a lot of food to replenish the energy she uses.');	

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Eijiro', 'Kirishima', 'October 16', 'https://i.imgur.com/136iAii.png',
'He is passionate and his motto is "manliness." His "quirk" is the "hardening" ability, which makes his whole body extremely rigid, making him useful for both offense and defense.',
'Hardening', 'Eijiro can harden his body to make it extremely rigid, making him useful for both offense and defense. He can also use his quirk to increase his physical strength and durability.');











CREATE TABLE heroes (
    id SERIAL PRIMARY KEY,
    character_id INTEGER REFERENCES character(id) NOT NULL,
    hero_name VARCHAR(255) NOT NULL,
    hero_type VARCHAR(255) NOT NULL,
    hero_description TEXT NOT NULL,
    hero_artwork TEXT NOT NULL,
    is_ProHero BOOLEAN NOT NULL
)



INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(1, 'Deku', ' ', 'Deku is a student at U.A. High School training to become a Pro Hero. His quirk is One For All The core of One For All has grown in strength from being passed from user to user and add the quirk of previous users.', 'https://i.imgur.com/Pcd2sZM.png', FALSE)

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(2, 'Dynamight', ' ', ' Great Explosion Murder God Dynamight is a student in Class 2-A at U.A. High School, training to become a Pro Hero. His quirk is the ability to explode by releasing nitro-like sweat from the sweat glands in his palms.', 'https://i.imgur.com/JJW3hNC.png', FALSE)

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(3, 'Uravity', ' ', 'Uravity is a student in Class 2-A , His quirk is the ability to put anything he touches into a state of zero gravity with the pads on his fingertips, she can use Gunhead martial arts, and use combine moves with Froppy','https://i.imgur.com/22c0Go6.png' ,FALSE)

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(4, 'Shoto','' 
,'Shoto is a student in Class 2-A, His quirk is the ability to use a fire and ice in each side of his body, He can also use both sides at once to create a powerful steam attack.',
'https://i.imgur.com/0aeI1Iy.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(5, 'Ingenium', ' Turbo Hero', 'Ingenium is a student in Class 2-A, His quirk is the ability to move at superhuman speeds using engines in his calves, He can also use his engines to create powerful kicks and propel himself through the air.', 'https://i.imgur.com/9ROwEJm.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(6, 'Froppy', 'Rainy Season Hero', 'Froppy is a student in Class 2-A, His quirk is the ability to use the abilities of a frog, including a long, sticky tongue, the ability to stick to walls, and the ability to jump long distances. She can also secrete a poisonous mucus from her skin that can paralyze her enemies.', 'https://i.imgur.com/MBudCpg.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(7, 'All Might', 'Symbol of Peace', 'All Might is the No. 1 hero in the world, known as "All Might." He is a symbol of peace and justice, and has saved countless people with his overwhelming power. He is a teacher at Yuei High School, where he teaches the next generation of heroes.', 'https://i.imgur.com/mVwNKPJ.png', TRUE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(9, 'Creaty', 'Everything Hero', 'Creaty is a student in Class 2-A, His quirk is the ability to create anything she wants from her body as long as she knows the molecular structure of the object she wants to create. She can also create objects that are more complex than her own body, but doing so requires her to eat a lot of food to replenish the energy she uses.', 'https://i.imgur.com/KBhAynW.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(10, 'Red Riot', 'Sturdy Hero', 'Red Riot is a student in Class 2-A, His quirk is the ability to harden his body to make it extremely rigid, making him useful for both offense and defense. He can also use his quirk to increase his physical strength and durability.', 'https://i.imgur.com/8Oghucl.png', FALSE);

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
 'https://i.imgur.com/YJPsq0k.png', 'OP13', 'https://www.dropbox.com/scl/fi/ch12oohym5zp1wtf11c5w/opening13.mp4?rlkey=qp9dt46o98tritoab80jiono7&st=tu4hpirm&dl=1', TRUE, FALSE);

INSERT INTO songs (song_name, song_artist, song_artwork, id_song_video, song_video, is_opening, is_ending) VALUES ('Bokurano', 'Eve',
 'https://i.imgur.com/a2zvj35.jpeg', 'OP11', 'https://www.dropbox.com/scl/fi/sokik562nrojntwrrpw6n/opening11.mp4?rlkey=g6td20o7o6kakvlwz6naicm5c&st=xa4lhu9w&dl=1', TRUE, FALSE);

INSERT INTO songs (song_name, song_artist, song_artwork, id_song_video, song_video, is_opening, is_ending) VALUES ('Ta_ga_Tame', 'TK From Ling Tosite Sigure',
 'https://i.imgur.com/fc6NTR7.jpeg', 'OP12', 'https://www.dropbox.com/scl/fi/mfefm7zj1d1za4hph6u9d/OP12.mp4?rlkey=0vo70653o22gokf9a55xkktg9&st=ho9j46f0&dl=1', TRUE, FALSE);

INSERT INTO songs (song_name, song_artist, song_artwork, id_song_video, song_video, is_opening, is_ending) VALUES ('Hitakumi', 'Super_Beaver',
 'https://i.imgur.com/Gv98sT2.png', 'OP10', 'https://www.dropbox.com/scl/fi/aax4f1ljm17sq94gshg04/OP10.mp4?rlkey=xlteo9185iza4kgqho35n2ez5&st=w0y1p7gt&dl=1', TRUE, FALSE);

INSERT INTO songs (song_name, song_artist, song_artwork, id_song_video, song_video, is_opening, is_ending) VALUES ('Merry-Go-Round', 'MAN_WITH_A_MISSION',
    'https://i.imgur.com/HDjHerU.jpeg', 'OP9', 'https://www.dropbox.com/scl/fi/48t8p1nyvgmvq6i97fgay/OP9.mp4?rlkey=c7kfijyin50c49k0dveniscis&st=fh4y1f2v&dl=1', TRUE, FALSE);

