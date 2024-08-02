import styles from '../styles/getchar.module.css'
import { useState, useEffect } from 'react'
import Pagination from './Pagination';
import CardSingleHero from './CardSingleHero';



interface CharactersProp {
    name: string;
    surname: string;
    quirk: string;
    hero_name: string;
    hero_type: string;
    hero_artwork: string;
    hero: any;
    quirk_description: string;

}

function GetAllHeroes() {
    const [heroes, setHeroes] = useState<CharactersProp[]>([]); // Initialize the state with an empty array
    const [currentPage, setCurrentPage] = useState(1); // Initialize the state with 1
    const [totalPages, setTotalPages] = useState(0); // Initialize the state with 0

    function fetchHeroesforPage(page: number) {
        fetch(`https://myheroacademia-api.vercel.app/api/heroes?page=${page}`)
            .then(resp => resp.json())
            .then(data => {
                setHeroes(data.heroes);
                setTotalPages(data.pagination.totalPages);

            })

    }

    useEffect(() => {
        fetchHeroesforPage(currentPage)
    }, [currentPage])


    return (
        <div className={styles.getchar_bg} style={{ backgroundColor: '#0184bc' }}>
            <section className={styles.query_container}>
                <div className={styles.box_hero}>
                    <div className={styles.box_text}>
                        <p>GET ALL HERO
                        </p>
                    </div>
                </div>
                <div className={styles.box_hero}>
                    <div className={styles.box_text} style={{ backgroundColor: '#0000', color: '#ffffff' }}>
                        <section className={styles.query_container_bar}>

                            <p style={{ color: '#ffffff' }}><span style={{ color: 'green', fontWeight: 'bold' }}>[GET]</span> https://myheroacademia-api.vercel.app/api/heroes/
                            </p>

                        </section>

                    </div>
                </div>
            </section>

            <div >
                <Pagination totalPages={totalPages} setCurrentPage={setCurrentPage} currentPage={currentPage} />
                <div className={styles.card_grid}>
                    {heroes.map(hero => (
                        <CardSingleHero
                            key={hero.hero_name}
                            hero_name={hero.hero_name}
                            hero_artwork={hero.hero_artwork}
                            hero_type={hero.hero_type}
                            quirk={hero.quirk}
                        />
                    ))
                    }
                </div>
            </div>

        </div>
    )
}

export default GetAllHeroes