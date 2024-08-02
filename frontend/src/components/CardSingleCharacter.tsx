import styles from '../styles/getchar.module.css'


interface CharactersProp {
    name: string;
    surname: string;
    artwork: string;
    quirk: string;
}
function CardSingleCharacter(props: CharactersProp) {
    const { name, surname, artwork, quirk} = props

    function goToHero() {
        window.location.href = `https://myheroacademia-api.vercel.app/api/characters/${name}`
    }
    return (
        <div style={{ margin: '20px' }} onClick={goToHero}>
            <div className={styles.singleherobg_principal}>
            <div className={styles.singleherobg_white}>

                <div className={styles.singleherobg} style={{ width: '250px', height: '450px' }}>
                    <a className={styles.hero_name_white} style={{ fontSize: '30px' }}>{name}</a>
                    <img src={artwork} alt={name} style={{ height: '73%' }} />
                    <a className={styles.hero_name_white} style={{ fontSize: '30px' }}>{surname}</a>
                    <a className={styles.hero_name_white} style={{ fontSize: '20px' }}>Quirk: <span className={styles.character_title} style={{ fontSize: '20px' }}>{quirk}</span></a>
                </div>

            </div>
            </div>




        </div>
    )
}

export default CardSingleCharacter