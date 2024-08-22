import styles from '../styles/video.module.css';

interface VideoProp {
    song_name: string;
    song_artist: string;
    song_artwork: string;
    id_song_video: string;
    goToVideoSelected: (id: string) => void;
}


function VideoCard(props: VideoProp) {
    const { song_name, song_artist, song_artwork, id_song_video, goToVideoSelected } = props

    function goToJsonVideo() {
        window.location.href = `https://myheroacademia-api.vercel.app/api/songs/${id_song_video}`
    }

  return (
    <div>
        <div className={styles.video_box} >
            <div className={styles.video_box_img} >
                <img src={song_artwork} alt="Song Artwork" onClick={goToJsonVideo}/>
            </div>
            <div className={styles.video_box_text}>
                <h1>{song_name}</h1>
                <p>{song_artist}</p>
                <a className={styles.hero_btns_btn_git} onClick={()=> goToVideoSelected(id_song_video)} >Listen Song</a>
            </div>
        </div>
    </div>
  )
}

export default VideoCard