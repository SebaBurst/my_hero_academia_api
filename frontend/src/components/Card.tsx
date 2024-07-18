import styles from '../styles/card.module.css';
import JsonView from 'react18-json-view';
import 'react18-json-view/src/style.css';




interface CharactersProp {
    name: string;
    surname: string;
    artwork: string;
    quirk: string;
    birthday: string;
    description: string;
    quirk_description: string;
    character: any;
}

function Card(props: CharactersProp) {
    const { name, surname, artwork, quirk, birthday, description, character } = props;


    return (
        <div className={styles.card}>
            <div className={styles.card_container}>
                <div className={styles.card_content}>
                    <div className={styles.card_image_container}>
                        <img src={artwork} alt={name} className={styles.card_image} />
                    </div>
                    <div className={styles.vertical_name}>
                        <span>{name} {surname}</span>
                    </div>
                </div>
            </div>
            <div className={styles.card_details}>
                <div className={styles.card_info}>
                    <div className={styles.card_bg_art} style={{ backgroundImage: `url(${artwork})` }}>
                        <div className={styles.card_content_info}>
                        </div>
                    </div>
                </div>
                <div className={styles.card_text}>
                    <a className={styles.hero_name_white}>{name} {surname}</a>
                    <a className={styles.hero_name_white} style={{ fontSize: '25px' }}>Quirk: <span className={styles.character_title}>{quirk}</span></a>
                    <a className={styles.hero_name_white} style={{ fontSize: '25px' }} > Birthday: {birthday}</a>
                    <a style={{ fontSize: '18px', color: 'white', fontFamily: 'Roboto', marginTop: '15px' }}>{description}</a>

                </div>
                <div className={styles.card_json}>
                    <div className={styles.card_json_content}>
                        <JsonView src={character} />
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Card;
