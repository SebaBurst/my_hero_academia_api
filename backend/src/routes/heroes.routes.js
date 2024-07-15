import { Router } from "express";
import { getHeroes, getHero} from "../controllers/heroes.controller.js";


const router = Router();

router.get('/heroes', getHeroes); // get all heroes
router.get('/heroes/:hero_name', getHero); // get a hero by hero_name


export default router;  
