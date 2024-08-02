import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import styles from '../styles/getchar.module.css'
import GetCharacter from './GetCharacter';
import GetAllCharacters from './GetAllCharacters';


function QueryCharacters() {
    return (
        <div className={styles.hero_bg_tabs}>
            <Tabs>
                <TabList>
                    <Tab>GET A SINGLE CHARACTER</Tab>
                    <Tab>GET ALL CHARACTERS</Tab>
                </TabList>

                <TabPanel>
                   <GetCharacter />
                </TabPanel>
                <TabPanel>
                    <GetAllCharacters />
                </TabPanel>
            </Tabs>
        </div>
    )
}

export default QueryCharacters