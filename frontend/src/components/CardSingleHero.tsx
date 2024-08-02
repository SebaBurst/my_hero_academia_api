import styles from '../styles/cardhero.module.css';


interface CharactersProp {
    hero_name: string;
    hero_artwork: string;
    hero_type: string;
    quirk: string;

}


function CardSingleHero(props: CharactersProp) {
    const { hero_name, hero_artwork, hero_type, quirk } = props

    function goToHero() {
        window.location.href = `https://myheroacademia-api.vercel.app/api/heroes/${hero_name}`
    }
    return (
        <div style={{ margin: '20px' }} onClick={goToHero}>
            <div className={styles.singleherobg_principal}>
            <div className={styles.singleherobg_white}>

                <div className={styles.singleherobg} style={{ width: '250px', height: '450px' }}>
                    <a className={styles.hero_name_white} style={{ fontSize: '30px' }}>{hero_type}</a>
                    <img src={hero_artwork} alt={hero_name} style={{ height: '73%' }} />
                    <a className={styles.hero_name_white} style={{ fontSize: '30px' }}>{hero_name}</a>
                    <a className={styles.hero_name_white} style={{ fontSize: '20px' }}>Quirk: <span className={styles.character_title} style={{ fontSize: '20px' }}>{quirk}</span></a>
                </div>

            </div>
            </div>




        </div>
    )
}

export default CardSingleHero