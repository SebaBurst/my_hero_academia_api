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





INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Minoru', 'Mineta', 'October 8', 'https://i.imgur.com/OKpEuSh.png',
'He loves women. Although he usually shows a strong attitude, he becomes timid as soon as he finds himself in a pinch. He has a "quirk" that allows him to create ball-like matter from his head that will not let go once it has attached to an object.',
'Pop Off', 'Minoru can create sticky, ball-like objects from his head that will stick to anything they touch. He can also pull the balls off his head and throw them at his enemies.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Mina', 'Ashido', 'July 30', 'https://i.imgur.com/rsF1i2D.png',
'A lively girl with pinkish skin. Her "quirk" is the ability to excrete a dissolving liquid from her body called "acid." The concentration of the dissolving liquid can be adjusted.',
'Acid', 'Mina can excrete a dissolving liquid from her body called "acid." She can control the concentration of the acid she excretes, allowing her to use it for a variety of purposes, such as melting obstacles or creating slippery surfaces.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Fumikage', 'Tokoyami', 'June 6', 'https://i.imgur.com/mNwJ4op.png',
'He has a bird-like appearance and a cool personality. His "quirk" is that he possesses a shadow-like monster that can stretch and materialize freely.',
'Dark Shadow', 'Fumikage has a shadow-like monster called "Dark Shadow" that can stretch and materialize freely. Dark Shadow is extremely powerful in the dark, but becomes uncontrollable in the light.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Yuga', 'Aoyama', 'May 30', 'https://i.imgur.com/zJTKGH8.png',
'A pretentious boy with an aristocratic air about him. His "quirk" is the "Neville Laser", which allows him to shoot a powerful laser from his navel.',
'Navel Laser', 'Yuga can shoot a powerful laser from his navel. He can control the power and direction of the laser, and can also use it to propel himself through the air.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Mashirao', 'Ojiro', 'May 28', 'https://i.imgur.com/ZJOI0s8.png',
'He has a serious personality and is physically strong, good at martial arts. His "quirk" is his strong "tail", which can be used for both offense and defense.',
'Tail', 'Mashirao has a strong, prehensile tail that he can use for both offense and defense. He is also skilled in martial arts, and can use his tail to perform powerful kicks and grapples.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Kyoka', 'Jiro', 'August 1', 'https://i.imgur.com/lUh253E.png',
'A carefree girl who loves rock music. Her "quirk" is "Earphone Jack," which allows her to play loud heartbeats or attack with sonic waves when someone inserts a plug into her earlobe',
'Earphone Jack', 'Kyoka has earphone jacks in her earlobes that she can use to play loud heartbeats or attack with sonic waves. She can also use her jacks to listen in on conversations from a distance.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Hanta', 'Sero', 'July 28', 'https://i.imgur.com/PGyvjK7.png',
'He has the "quirk" of "tape" and can shoot tape-like objects from his uniquely shaped elbows, which can be used to wrap up targets or use them like ropes.',
'Tape', 'Hanta can shoot tape-like objects from his uniquely shaped elbows. He can use his tape to wrap up targets, create barriers, or use it like ropes to swing through the air.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Denki', 'Kaminari', 'June 29', 'https://i.imgur.com/cNTQbB5.png',
'He has a light-hearted and frivolous personality. His "quirk" is the "electricity" that discharges from his body. When the wattage exceeds his tolerance, his brain shorts out and he temporarily becomes extremely stupid',
'Electrification', 'Denki can discharge electricity from his body. He can use his electricity to attack his enemies, create barriers, or power electronic devices. However, if he discharges too much electricity at once, his brain shorts out and he becomes extremely stupid.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Mezo', 'Shoji', 'February 1', 'https://i.imgur.com/SXuWsdx.png',
'In addition to both arms, it has two tentacles on each side, and has the "quirk" of being able to copy organs such as mouths and ears at the end of its tentacles. It is large and silent.'
,'Dupli-Arms', 'Mezo has multiple arms and tentacles that he can use to copy organs such as mouths and ears. He can also use his tentacles to stretch and reach long distances, and can use them to attack his enemies.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Koji', 'Koda', 'January 1', 'https://i.imgur.com/ZFQabxk.png',
'A quiet boy who says very little. His "quirk" is his "animal voice," which allows him to communicate with animals and give them commands.',
'Anivoice', 'Koji can communicate with animals and give them commands using his "Anivoice" quirk. He can also use his quirk to amplify his voice to create powerful sonic attacks.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Rikido', 'Sato', 'May 6', 'https://i.imgur.com/McXuXtr.png',
'He has a large build and fish-eared lips like a professional wrestler. His "quirk" is the "Sugar Dope," which doubles his power depending on the amount of sugar he consumes.',
'Sugar Rush', 'Rikido can double his strength and speed by consuming sugar. The more sugar he consumes, the stronger and faster he becomes. However, if he consumes too much sugar, he will become extremely drowsy and fall asleep.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Toru', 'Hagakure', 'June 16', 'https://i.imgur.com/gcSDeuW.png',
'A girl whose "quirk" is that her body is transparent, making her completely invisible. She has a fun-loving and energetic personality.',
'Invisibility', 'Toru can make her body completely invisible, making her undetectable to the naked eye. She can also use her invisibility to sneak up on her enemies and launch surprise attacks.');


INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Mirio', 'Togata', 'July 15', 'https://i.imgur.com/c6fl6FJ.png',
'He is a third-year student at Yuei High School and a member of the Big Three. He is a cheerful and optimistic person who is always smiling. His "quirk" is "Permeation," which allows him to pass through solid objects.',
'Permeation', 'Mirio can pass through solid objects by phasing his body out of reality. He can also use his quirk to phase through attacks and surprise his enemies.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Nejire', 'Hado', 'March 1', 'https://i.imgur.com/LaOiNUK.png',
'He is a third-year student in the hero department and one of the "Big Three." His "quirk" is "wave motion," which uses his own vitality as energy to release shock waves. He is very curious and will ask about anything that piques his curiosity.',
'Wave Motion', 'Nejire can use his own vitality as energy to release shock waves. He can use his quirk to attack his enemies, create barriers, or power electronic devices. However, if he uses too much energy at once, he will become extremely tired and weak.');




INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Tamaki', 'Amajiki', 'April 4', 'https://i.imgur.com/5fjL9Hn.png',
'He is a third-year student at Yuei High School and a member of the Big Three. He is a shy and introverted person who has trouble expressing himself. His "quirk" is "manifestation," which allows him to manifest the characteristics of anything he eats.',
'Manifest', 'Tamaki can manifest the characteristics of anything he eats. He can use his quirk to gain the abilities of animals, plants, and even inanimate objects. However, he must overcome his shyness and self-doubt to use his quirk to its full potential.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Shota', 'Aizawa', 'November 8', 'https://i.imgur.com/JiTBmMI.png',
'He is a pro hero and a teacher at Yuei High School. He has a strict and no-nonsense personality, and is known for his ability to erase the quirks of others by looking at them.',
'Erasure', 'Shota can erase the quirks of others by looking at them. He can also use his quirk to prevent his enemies from using their quirks, making him a formidable opponent in battle.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Hizashi', 'Yamada', 'June 20', 'https://i.imgur.com/0WGw9oI.png',
'He is a pro hero and a teacher at Yuei High School. He has a loud and outgoing personality, and is known for his ability to use his voice to create powerful sonic attacks.',
'Voice', 'Hizashi can use his voice to create powerful sonic attacks. He can use his quirk to amplify his voice to create powerful sound waves that can shatter objects and incapacitate his enemies.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Enji', 'Todoroki_', 'January 18', 'https://i.imgur.com/aUjHuiq.png',
'He is a pro hero and the current No. 1 hero in the world. He is known as "Endeavor" and is the father of Shoto Todoroki. His "quirk" is "Hellflame," which allows him to generate and control fire.',
'Hellflame', 'Enji can generate and control fire. He can use his quirk to create powerful fire attacks, melt obstacles, and propel himself through the air. He can also use his fire to increase his physical strength and durability.');

INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Keigo', 'Takami', 'December 1', 'https://i.imgur.com/GqfVHh6.png',
'He is a pro hero known as "Hawks." He is the No. 2 hero in the world and is known for his speed and agility. His "quirk" is "Fierce Wings," which allows him to generate and control feathers.',
'Fierce Wings', 'Keigo can generate and control feathers. He can use his feathers to fly, attack his enemies, and create barriers. He can also use his feathers to carry objects and people, making him a versatile and powerful hero.');







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




INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(11, 'Grape Juice', 'Fresh-Picked Hero', 'Grape Juice is a student in Class 2-A, His quirk is the ability to create sticky, ball-like objects from his head that will stick to anything they touch. He can also pull the balls off his head and throw them at his enemies.', 'https://i.imgur.com/HHFw2Xq.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(12, 'Pinky', '', 'Pinky is a student in Class 2-A, His quirk is the ability to excrete a dissolving liquid from her body called "acid." She can control the concentration of the acid she excretes, allowing her to use it for a variety of purposes, such as melting obstacles or creating slippery surfaces.', 'https://i.imgur.com/4Lun6bP.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(13, 'Tsukuyomi', 'Jet-Black Hero', 'Tsukuyomi is a student in Class 2-A, His quirk is the ability to create a shadow-like monster called "Dark Shadow" that can stretch and materialize freely. Dark Shadow is extremely powerful in the dark, but becomes uncontrollable in the light.', 'https://i.imgur.com/8sTYOv5.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(14, 'Cant Stop Twinkling', 'Shining Hero', 'Can''t Stop Twinkling is a student in Class 2-A, His quirks is the ability to shoot a powerful laser from his navel. He can control the power and direction of the laser, and can also use it to propel himself through the air.', 'https://i.imgur.com/LEVyoJG.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(15, 'Tailman', 'Martial Arts Hero', 'Tailman is a student in Class 2-A, His quirk is the ability to have a strong, prehensile tail that he can use for both offense and defense. He is also skilled in martial arts, and can use his tail to perform powerful kicks and grapples.', 'https://i.imgur.com/I9PIfCQ.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(16, 'Earphone Jack', 'Hearing Hero', 'Earphone Jack is a student in Class 2-A, His quirk is the ability to play loud heartbeats or attack with sonic waves when someone inserts a plug into her earlobe. She can also use her jacks to listen in on conversations from a distance.', 'https://i.imgur.com/oWWZe1g.png', FALSE);


INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(17, 'Cellophane', 'Taping Hero', 'Cellophane is a student in Class 2-A, His quirk is the ability to shoot tape-like objects from his uniquely shaped elbows. He can use his tape to wrap up targets, create barriers, or use it like ropes to swing through the air.', 'https://i.imgur.com/YbU6GhG.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(18, 'Chargebolt', 'Stun Gun Hero', 'Chargebolt is a student in Class 2-A, His quirk is the ability to discharge electricity from his body. He can use his electricity to attack his enemies, create barriers, or power electronic devices. However, if he discharges too much electricity at once, his brain shorts out and he becomes extremely stupid.', 'https://i.imgur.com/DBncuXV.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(19, 'Tentacole', 'Tentacle Hero', 'Tentacole is a student in Class 2-A, His quirk is the ability to copy organs such as mouths and ears at the end of his tentacles. He can also use his tentacles to stretch and reach long distances, and can use them to attack his enemies.', 'https://i.imgur.com/l8wlI2Y.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(20, 'Anima', 'Petting Hero', 'Anima is a student in Class 2-A, His quirk is the ability to communicate with animals and give them commands using his "Anivoice" quirk. He can also use his quirk to amplify his voice to create powerful sonic attacks.', 'https://i.imgur.com/qWLAyTV.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(21, 'Sugarman', 'Sweets Hero', 'Sugarman is a student in Class 2-A, His quirk is the ability to double his strength and speed by consuming sugar. The more sugar he consumes, the stronger and faster he becomes. However, if he consumes too much sugar, he will become extremely drowsy and fall asleep.', 'https://i.imgur.com/ZCblaYo.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(22, 'Invisible Girl', ' Stealth Hero', 'Invisible Girl is a student in Class 2-A, His quirks is the ability to make her body completely invisible, making her undetectable to the naked eye. She can also use her invisibility to sneak up on her enemies and launch surprise attacks.', 'https://i.imgur.com/Y7HcH0s.png', FALSE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(23, 'Lemillion', '', 'Lemillion is a third-year student at Yuei High School and a member of the Big Three. He is a cheerful and optimistic person who is always smiling. His quirk is the ability to pass through solid objects.', 'https://i.imgur.com/AJlaus3.png', TRUE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(24, 'Nejire Chan', '', 'Nejire Chan is a third-year student in the hero department and one of the "Big Three." His quirk is the ability to use his own vitality as energy to release shock waves. He is very curious and will ask about anything that piques his curiosity.', 'https://i.imgur.com/4kzCyJ3.png', TRUE);




INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(25, 'Suneater', '', 'Suneater is a third-year student at Yuei High School and a member of the Big Three. He is a shy and introverted person who has trouble expressing himself. His quirk is the ability to manifest the characteristics of anything he eats.', 'https://i.imgur.com/lMiT48d.png', TRUE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(26, 'Eraser head', 'Erasure Hero', 'Eraserhead is a pro hero and a teacher at Yuei High School. He has a strict and no-nonsense personality, and is known for his ability to erase the quirks of others by looking at them.', 'https://i.imgur.com/hy7kI1T.png', TRUE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(27, 'Present Mic', 'Voice Hero', 'Present Mic is a pro hero and a teacher at Yuei High School. He has a loud and outgoing personality, and is known for his ability to use his voice to create powerful sonic attacks.', 'https://i.imgur.com/lRQ22OO.png', TRUE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(28, 'Endeavor', 'Flame Hero', 'Endeavor is a pro hero and the current No. 1 hero in the world. He is known as "Endeavor" and is the father of Shoto Todoroki. His quirk is the ability to generate and control fire.', 'https://i.imgur.com/2NUHaKj.png', TRUE);

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(29, 'Hawks', 'Wing Hero', 'Hawks is a pro hero known as "Hawks." He is the No. 2 hero in the world and is known for his speed and agility. His quirk is the ability to generate and control feathers.', 'https://i.imgur.com/CuJguww.png', TRUE);







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

