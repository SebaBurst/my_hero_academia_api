import { Router } from "express";

import { getCharacters, getCharacter} from "../controllers/charactes.controller.js";	

const router = Router();

router.get('/characters', getCharacters); // get all characters
router.get('/characters/:param', getCharacter); // get a character by name or surname

export default router;  
