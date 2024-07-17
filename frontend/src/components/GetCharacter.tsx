import styles from '../styles/getchar.module.css'
import { useState, useEffect } from 'react'
import Card from './Card';


interface character{
  name: string;
  surname: string;
  artwork: string;
  quirk: string;
  birthdate: string;
  description: string;
  quirk_description: string;

}
function GetCharacter() {

  const [character, setCharacter] = useState({} as character)
  const [name, setName] = useState('izuku')
  const [queryChange, setQueryChange] = useState('izuku');


  //fetching the character
  function fetchCharacter(characterName: string) {
    fetch(`https://myheroacademia-api.vercel.app/api/characters/${characterName}`)
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
    <div className={styles.getchar_bg}>
      <section className={styles.query_container}>
        <div className={styles.box_hero}>
          <div className={styles.box_text}>
            <p>GET A CHARACTER
            </p>
          </div>
        </div>
        <div className={styles.box_hero}>
          <div className={styles.box_text} style={{ backgroundColor: '#0000', color: '#ffffff' }}>
            <section className={styles.query_container_bar}>

              <p style={{ color: '#ffffff' }}><span style={{ color: 'green', fontWeight: 'bold' }}>[GET]</span> https://myheroacademia-api.vercel.app/api/characters/
              </p>

              <input type="text" placeholder="name or surname or id" className={styles.search_input} onChange={getInputChange} value={queryChange} />
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
        artwork={character.artwork}
        quirk={character.quirk}
        birthday={character.birthdate}
        description={character.description}
        quirk_description={character.quirk_description}
        character={character}
      />

    </div>
  )
}

export default GetCharacter