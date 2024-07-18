import styles from '../styles/cardhero.module.css';
import JsonView from 'react18-json-view';
import 'react18-json-view/src/style.css';


interface CharactersProp {
    name: string;
    surname: string;
    quirk: string;
    hero_name: string;
    hero_type: string;
    hero_description: string;
    hero_artwork: string;
    hero: any;

}


function CardHero(props: CharactersProp) {
  const { name, surname, quirk, hero_name, hero_type, hero_description, hero_artwork, hero } = props;
  return (
    <div className={styles.card}>
        <div className={styles.card_container}>
            <div className={styles.card_content}>
                <div className={styles.card_image_container}>
                    <img src={hero_artwork} alt={hero_name} className={styles.card_image} />
                </div>
                <div className={styles.vertical_name}>
                    <span>{hero_name}</span>
                </div>
            </div>

            
        </div>
        <div className={styles.card_details}>
            <div className={styles.card_info}>
                <div className={styles.card_bg_art} style={{ backgroundImage: `url(${hero_artwork})` }}>
                    <div className={styles.card_content_info}>
                    </div>
                </div>
            </div>
            <div className={styles.card_text}>
        
            <a className={styles.hero_name_white} style={{ fontSize: '30px' }}>{name} {surname}</a>

                <a className={styles.character_title} style={{ fontSize: '55px' }}>{hero_type} {hero_name}</a>
                <a className={styles.hero_name_white} style={{ fontSize: '25px' }}>Quirk: <span className={styles.character_title}>{quirk}</span></a>
                <a style={{ fontSize: '18px', color: 'white', fontFamily: 'Roboto', marginTop: '15px' }}>{hero_description}</a>

            </div>
            <div className={styles.card_json}>
                <div className={styles.card_json_content}>
                    <JsonView src={hero} />
                </div>
            </div>
        </div>
    </div>
);
}

export default CardHero