import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import styles from '../styles/video.module.css';
import GetaVideo from './GetaVideo';
import GetAllVideos from './GetAllVideos';
import { useState } from 'react'



function QueryVideos() {
    const [activeTab, setActiveTab] = useState(0);
    const [selectedVideo, setSelectedVideo] = useState('OP13');

 


    return (
        <div className={styles.hero_bg_tabs}>
            <Tabs selectedIndex={activeTab} onSelect={(index) => setActiveTab(index)}>
                <TabList>
                    <Tab>GET A OPENING OR ENDING</Tab>
                    <Tab>GET ALL OPENINGS & ENDINGS</Tab>
                </TabList>

                <TabPanel>
                    <GetaVideo query={selectedVideo}/>

                </TabPanel>
                <TabPanel>
                    <GetAllVideos setActiveTab ={setActiveTab} setSelectedVideo={setSelectedVideo}/>
                </TabPanel>
            </Tabs>
        </div>
    )
}

export default QueryVideos