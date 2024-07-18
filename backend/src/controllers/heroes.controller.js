import { pool } from "../db.js";


const ITEMS_PER_PAGE = 10; // number of items per page for pagination

//get all heroes with pagination

export const getHeroes = async (req, res) => {
    try {
        const page = req.query.page || 1; // get the page number from the query parameters
        const offset = (page - 1) * ITEMS_PER_PAGE; // calculate the offset based on the page number
        const result = await pool.query(`
            SELECT 
                c.*, 
                h.id AS hero_id, 
                h.hero_name, 
                h.hero_type, 
                h.hero_description, 
                h.hero_artwork, 
                h.is_ProHero
            FROM 
                character c
            JOIN 
                heroes h ON c.id = h.character_id
            LIMIT $1 OFFSET $2
        `, [ITEMS_PER_PAGE, offset]); // get the heroes from the database

        const rows = result.rows; // get the rows from the result
        // get count of all heroes
        const count = await pool.query('SELECT COUNT(*) FROM heroes'); // get the count of all heroes

        const totalItems = parseInt(count.rows[0].count);
        // get the total count from the result

        // add pagination information to the response
        res.json({
            pagination: { // add pagination information to the response
                currentPage: page, // send the current page
                itemsPerPage: ITEMS_PER_PAGE, // send the number of items per page
                totalItems: totalItems, // send the total number of items
                totalPages: Math.ceil(totalItems / ITEMS_PER_PAGE), // calculate the total number of pages
            },
            heroes: rows // send the heroes
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}


//get a hero by hero_name

export const getHero = async (req, res) => {
    try {
        const hero_name = req.params.hero_name.toLowerCase(); // get the hero_name from the request parameters
        const result = await pool.query(`
            SELECT 
                c.*, 
                h.id AS hero_id, 
                h.hero_name, 
                h.hero_type, 
                h.hero_description, 
                h.hero_artwork, 
                h.is_ProHero
            FROM 
                character c
            JOIN 
                heroes h ON c.id = h.character_id
            WHERE 
                LOWER(h.hero_name) = $1 OR LOWER(c.name) = $1 OR LOWER(c.surname) = $1
        `, [hero_name]); // get the hero from the database

        res.json(result.rows[0]); // send the hero
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}
