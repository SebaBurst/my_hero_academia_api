
import Styles from '../styles/banner.module.css'
import Logo from '../assets/footerlogo.png'

function Footer() {
  return (
    <footer className={Styles.footer_container}>
        <section>
            <div className={Styles.footer_logo}>
                <img src={Logo} alt="Footer Logo" />
            </div>
        </section>

        <div className={Styles.footer_links}>
            <a style={{marginTop:'10px'}}>Rest Api developed by <span>Sebaburst</span></a>
        
        </div>


    </footer>
  )
}

export default Footer