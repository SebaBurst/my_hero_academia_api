import heroimage from '../assets/dekuhero.webp'
import styles from '../styles/hero.module.css'
import logo from '../assets/logo.png'

function Hero() {
    return (
        <div className={styles.hero_bg}>
            <div className={styles.hero_content_left}>
                <img src={logo} alt="logo" />

                <div className={styles.box_hero}>
                    <div className={styles.box_text}>
                        <p>Here you will find a complete api, where you can obtain all characters of my hero academia and his songs them be able to consume in your projects. I hope you enjoy consuming this api.  
                        </p>
                    </div>
                </div>


            </div>
            <div className={styles.hero_content_right}>
                <img src={heroimage} alt="hero" className={styles.hero_img} />
            </div>

        </div>
    )
}

export default Hero