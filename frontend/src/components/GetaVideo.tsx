import Plyr from 'plyr-react';
import 'plyr/dist/plyr.css';
import styles from '../styles/video.module.css';
import { useState, useEffect } from 'react'
import JsonView from 'react18-json-view';


interface song {
  song_name: string;
  song_artist: string;
  song_artwork: string;
  id_song_video: string;
  song_video: string;
  is_opening: boolean;
  is_ending: boolean;


}



function GetaVideo() {
  const [name, setName] = useState('curtain_call');
  const [queryChange, setQueryChange] = useState('curtain_call');
  const [video, setVideo] = useState({} as song)

  const videourl = 'https://www.dropbox.com/scl/fi/ch12oohym5zp1wtf11c5w/opening13.mp4?rlkey=qp9dt46o98tritoab80jiono7&st=tu4hpirm&dl=1'

  function getInputChange(e: any) {
    setQueryChange(e.target.value);
  }


  function fetchVideo(videoName: string) {
    fetch(`https://myheroacademia-api.vercel.app/api/songs/${videoName}`)
      .then(resp => resp.json())
      .then(data => setVideo(data));
  }

  function handleSubmit() {
    setName(queryChange);
  }


  useEffect(() => {
    fetchVideo(name);
  }, [name]);

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
      


      <div className={styles.video_container_json}>
        <div className={styles.box_hero}>
          <div className={styles.box_text}>
            <p>{name}
            </p>

            <JsonView src={video} />
          </div>
        </div>
        <div className={styles.video_container}>
          <div className={styles.video_content}>
            <Plyr
              source={{
                type: "video",
                sources: [{ src: video.song_video, provider: "html5" }],
              }}
            />
          </div>
        </div>
      </div>


    </div>
  )
}

export default GetaVideo