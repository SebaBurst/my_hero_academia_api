import express from 'express';
import {PORT} from './config.js';
import cors from 'cors';
import characterRoutes from './routes/characters.routes.js';
import heroesRoutes from './routes/heroes.routes.js';



const app = express();
app.use(cors());
app.use(express.json());

app.use('/api', characterRoutes);
app.use('/api', heroesRoutes);

app.listen(3000, () => {
    console.log(`Server running on port 3000`);
});
