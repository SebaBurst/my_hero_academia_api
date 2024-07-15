//create character table

CREATE TABLE character (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    birthdate VARCHAR(255) NOT NULL,
    artwork VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    quirk VARCHAR(255) NOT NULL,
    quirk_description VARCHAR(255) NOT NULL
)


INSERT INTO character (name, surname, birthdate, artwork, description, quirk, quirk_description) VALUES ('Izuku', 'Midoriya', 'July 15', 'https://i.imgur.com/Pcd2sZM.png'
, 'Izuku Midoriya is the main protagonist of My Hero Academia.', 'One For All','')

INSERT INTO heroes (character_id, hero_name, hero_type, hero_description, hero_artwork, is_ProHero) VALUES 
(1, 'Deku', ' ', 'Deku is a student at U.A. High School training to become a Pro Hero.', 'https://i.imgur.com/Pcd2sZM.png', FALSE)


CREATE TABLE heroes (
    id SERIAL PRIMARY KEY,
    character_id INTEGER REFERENCES character(id) NOT NULL,
    hero_name VARCHAR(255) NOT NULL,
    hero_type VARCHAR(255) NOT NULL,
    hero_description VARCHAR(255) NOT NULL,
    hero_artwork VARCHAR(255) NOT NULL,
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
    song_name VARCHAR(255) NOT NULL,
    song_artist VARCHAR(255) NOT NULL,
    song_artwork VARCHAR(255) NOT NULL,
    song_url VARCHAR(255) NOT NULL,
    song_video VARCHAR(255) NOT NULL,
    is_opening BOOLEAN NOT NULL,
    is_ending BOOLEAN NOT NULL
)
