import styles from '../styles/video.module.css';
import { useState, useEffect } from 'react'
import VideoCard from './VideoCard';
import Pagination from './Pagination';


interface VideoProp {
    song_name: string;
    song_artist: string;
    song_artwork: string;
    id_song_video: string;
    song_video: string;
    is_opening: boolean;
    is_ending: boolean;
}

interface GetAllVideosProps {
    setActiveTab: (index: number) => void;
    setSelectedVideo: (video: string) => void;
}

function GetAllVideos({ setActiveTab, setSelectedVideo }: GetAllVideosProps) {
    const [videos, setVideos] = useState<VideoProp[]>([]); // Initialize the state with an empty array
    const [currentPage, setCurrentPage] = useState(1); // Initialize the state with 1
    const [totalPages, setTotalPages] = useState(0); // Initialize the state with 0

    function fetchVideosforPage(page: number) {
        fetch(`https://myheroacademia-api.vercel.app/api/songs?page=${page}`)
            .then(resp => resp.json())
            .then(data => {
                setVideos(data.songs);
                setTotalPages(data.pagination.totalPages);

            })
    }

    useEffect(() => {
        fetchVideosforPage(currentPage)
    }
    , [currentPage])
    

    function goToVideoSelected(id: string) {
        setSelectedVideo(id);
        setActiveTab(0);    
    }


        return (
            <div className={styles.videosAll_bg}>
                    <Pagination totalPages={totalPages} setCurrentPage={setCurrentPage} currentPage={currentPage} />

                <div className={styles.video_grid}>
                {videos.map(video => (
                    <div  key={video.id_song_video}>
                        <VideoCard
                            song_name={video.song_name}
                            song_artist={video.song_artist}
                            song_artwork={video.song_artwork}
                            id_song_video={video.id_song_video}
                            goToVideoSelected={goToVideoSelected}
                           />
                    </div>
                ))

                }
                </div>
            </div>
        )
    }

    export default GetAllVideos