import styles from '../styles/getchar.module.css'
function GetCharacter() {
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
          <div className={styles.box_text}>
            <p><span style={{ color: 'green', fontWeight: 'bold' }}>[GET]</span> https://myheroacademia-api.vercel.app/api/characters/
            </p>
          </div>
        </div>
      </section>

      <section className={styles.search_container}>
        <div className={styles.box_hero}>
          <div className={styles.box_text} style={{ backgroundColor: '#0000', color: '#ffffff' }}>
            <p style={{ color: '#ffffff' }}>https://myheroacademia-api.vercel.app/api/characters/
            </p>

            <input type="text" placeholder="Search for character" className={styles.search_input} />
          </div>
        </div>


        <div className={styles.box_hero_button}>
          <div className={styles.box_text_button} >
            <p >PLUS ULTRA
            </p>
          </div>
        </div>
      </section>
    </div>
  )
}

export default GetCharacter