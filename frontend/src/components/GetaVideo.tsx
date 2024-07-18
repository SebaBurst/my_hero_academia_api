import Plyr from 'plyr-react';
import 'plyr/dist/plyr.css';
import styles from '../styles/video.module.css';
import { useState, useEffect } from 'react'


function GetaVideo() {
    const [name, setName] = useState('curtain_call');
    const [queryChange, setQueryChange] = useState('curtain_call');
  
    const videourl = 'https://www.dropbox.com/scl/fi/ch12oohym5zp1wtf11c5w/opening13.mp4?rlkey=qp9dt46o98tritoab80jiono7&st=tu4hpirm&dl=1'

    function getInputChange(e: any) {
        setQueryChange(e.target.value);
    }
    
    
    function handleSubmit() {
      setName(queryChange);
    }
    
    return (
        <div className={styles.video_bg}>
            <section className={styles.query_container}>
        <div className={styles.box_hero}>
          <div className={styles.box_text}>
            <p>GET A OPENING OR ENDING
            </p>
          </div>
        </div>
        <div className={styles.box_hero}>
          <div className={styles.box_text} style={{ backgroundColor: '#0000', color: '#ffffff' }}>
            <section className={styles.query_container_bar}>

              <p style={{ color: '#ffffff' }}><span style={{ color: 'green', fontWeight: 'bold' }}>[GET]</span> https://myheroacademia-api.vercel.app/api/songs/
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
            <div className={styles.video_container}>
                <Plyr
                    source={{
                        type: "video",
                        sources: [{ src: videourl, provider: "html5" }],
                    }}
                />
            </div>
        </div>
    )
}

export default GetaVideo