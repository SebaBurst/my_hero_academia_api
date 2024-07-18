import styles from '../styles/getchar.module.css'
import { useState, useEffect } from 'react'
import Card from './CardHero';

interface heroe {
    name: string;
    surname: string;
    artwork: string;
    quirk: string;
    birthdate: string;
    description: string;
    quirk_description: string;
    hero_name: string;
    hero_type: string;
    hero_description: string;
    hero_artwork: string;
    isProHero: boolean;

}



function GetHeroes() {

    const [character, setCharacter] = useState({} as heroe)
    const [name, setName] = useState('dynamight')
    const [queryChange, setQueryChange] = useState('dynamight');


    //fetching the character
    function fetchCharacter(characterName: string) {
        fetch(`https://myheroacademia-api.vercel.app/api/heroes/${characterName}`)
            .then(resp => resp.json())
            .then(data => setCharacter(data));
    }


    function getInputChange(e: any) {
        setQueryChange(e.target.value);
    }


    function handleSubmit() {
        setName(queryChange);
    }


    //useEffect to fetch the character
    useEffect(() => {
        fetchCharacter(name);
    }, [name]);

    return (
        <div className={styles.getchar_bg} style={{backgroundColor:'#0184bc'}}>
            <section className={styles.query_container}>
                <div className={styles.box_hero}>
                    <div className={styles.box_text}>
                        <p>GET A HERO
                        </p>
                    </div>
                </div>
                <div className={styles.box_hero}>
                    <div className={styles.box_text} style={{ backgroundColor: '#0000', color: '#ffffff' }}>
                        <section className={styles.query_container_bar}>

                            <p style={{ color: '#ffffff' }}><span style={{ color: 'green', fontWeight: 'bold' }}>[GET]</span> https://myheroacademia-api.vercel.app/api/heroes/
                            </p>

                            <input type="text" placeholder="hero name" className={styles.search_input} onChange={getInputChange} value={queryChange} />
                        </section>

                    </div>
                </div>

                <div className={styles.box_hero_button} onClick={handleSubmit}>
                    <div className={styles.box_text_button} >
                        <p >PLUS ULTRA
                        </p>
                    </div>
                </div>
            </section>

            <Card
                name={character.name}
                surname={character.surname}
                quirk={character.quirk}
                hero_name={character.hero_name}
                hero_type={character.hero_type}
                hero_description={character.hero_description}
                hero_artwork={character.hero_artwork}
                hero={character}
            />

        </div>
    )
}

export default GetHeroes