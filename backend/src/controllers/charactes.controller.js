import { pool } from "../db.js";

const ITEMS_PER_PAGE = 10; // number of items per page for pagination

//get all characters with pagination

export const getCharacters = async (req, res) => {
    try {
        const page = req.query.page || 1; // get the page number from the query parameters
        const offset = (page - 1) * ITEMS_PER_PAGE; // calculate the offset based on the page number

        //get the total number of characters
        const totalCharacters = await pool.query('SELECT * FROM character LIMIT $1 OFFSET $2', [ITEMS_PER_PAGE, offset]); // get the characters from the database
        const rows = totalCharacters.rows; // get the rows from the result
        // get count of all characters
        const count = await pool.query('SELECT COUNT(*) FROM character'); // get the count of all characters
        const totalItems = parseInt(count.rows[0].count);
        // add pagination information to the response
        res.json({
            pagination: { // add pagination information to the response
                currentPage: page, // send the current page
                itemsPerPage: ITEMS_PER_PAGE, // send the number of items per page
                totalItems: totalItems, // send the total number of items
                totalPages: Math.ceil(totalItems / ITEMS_PER_PAGE), // calculate the total number of pages
            },
            characters: rows // send the characters
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}


//get a character by name or surname
export const getCharacter = async (req, res) => {
    try {
        const param = req.params.param.toLowerCase();
        let character;

        if (isNaN(param)) {
            // Si el parámetro no es un número, búscalo por nombre o apellido
            character = await pool.query(
                'SELECT * FROM character WHERE LOWER(name) = $1 OR LOWER(surname) = $1', 
                [param]
            );
        } else {
            // Si el parámetro es un número, búscalo por ID
            character = await pool.query(
                'SELECT * FROM character WHERE id = $1', 
                [param]
            );
        }

        if (character.rows.length === 0) {
            return res.status(404).json({ error: 'Character not found' });
        }

        res.json(character.rows[0]);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};