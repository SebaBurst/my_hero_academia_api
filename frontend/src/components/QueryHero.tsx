import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import GetHeroes from './GetHeroes';
import styles from '../styles/hero.module.css'
import GetAllHeroes from './GetAllHeroes';

function QueryHero() {
    return (
        <div className={styles.hero_bg_tabs}>
            <Tabs>
                <TabList>
                    <Tab>GET A SINGLE HERO</Tab>
                    <Tab>GET ALL HEROES</Tab>
                </TabList>

                <TabPanel>
                    <GetHeroes />
                </TabPanel>
                <TabPanel>
                    <GetAllHeroes />
                </TabPanel>
            </Tabs>
        </div>
    )
}

export default QueryHero