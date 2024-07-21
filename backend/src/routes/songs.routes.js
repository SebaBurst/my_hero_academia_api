import { Router } from "express";
import { getSongs, getSong} from "../controllers/songs.controller.js";


const router = Router();

router.get('/songs', getSongs); // get all songs
router.get('/songs/:song_name', getSong); // get a song


export default router;  