import { useState, useEffect } from 'react'
import Pagination from './Pagination';
import styles from '../styles/getchar.module.css'
import CardSingleCharacter from './CardSingleCharacter';

interface CharactersProp {
  name: string;
  surname: string;
  artwork: string;
  quirk: string;
}

function GetAllCharacters() {
  const [characters, setCharacters] = useState<CharactersProp[]>([]); // Initialize the state with an empty array
  const [currentPage, setCurrentPage] = useState(1); // Initialize the state with 1
  const [totalPages, setTotalPages] = useState(0); // Initialize the state with 0

  function fetchCharactersforPage(page: number) {
    fetch(`https://myheroacademia-api.vercel.app/api/characters?page=${page}`)
      .then(resp => resp.json())
      .then(data => {
        setCharacters(data.characters);
        setTotalPages(data.pagination.totalPages);

      })

  }

  useEffect(() => {
    fetchCharactersforPage(currentPage)
  }, [currentPage])


  return (
        <div className={styles.getchar_bg}>
            <section className={styles.query_container}>
                <div className={styles.box_hero}>
                    <div className={styles.box_text}>
                        <p>GET ALL CHARACTERS
                        </p>
                    </div>
                </div>
                <div className={styles.box_hero}>
                    <div className={styles.box_text} style={{ backgroundColor: '#0000', color: '#ffffff' }}>
                        <section className={styles.query_container_bar}>

                            <p style={{ color: '#ffffff' }}><span style={{ color: 'green', fontWeight: 'bold' }}>[GET]</span> https://myheroacademia-api.vercel.app/api/characters/
                            </p>

                        </section>

                    </div>
                </div>
            </section>

            <div >
                <Pagination totalPages={totalPages} setCurrentPage={setCurrentPage} currentPage={currentPage} />
                <div className={styles.card_grid}>
                    {characters.map(character => (
                       <CardSingleCharacter
                        name={character.name}
                        surname={character.surname}
                        artwork={character.artwork}
                        quirk={character.quirk}
                        />
                    ))
                    }
                </div>
            </div>

        </div>
    )
}

export default GetAllCharacters