import {pool} from "../db.js";



const ITEMS_PER_PAGE = 10; // number of items per page for pagination

//get all villans with pagination

export const getVillans = async (req, res) => {
    try {
        const page = req.query.page || 1; // get the page number from the query parameters
        const offset = (page - 1) * ITEMS_PER_PAGE; // calculate the offset based on the page number
        const result = await pool.query(`
            SELECT 
                c.*, 
                v.id AS villan_id, 
                v.villan_name, 
                v.villan_description, 
                v.villan_artwork, 
            FROM 
                character c
            JOIN 
                villans v ON c.id = v.character_id
            LIMIT $1 OFFSET $2
        `, [ITEMS_PER_PAGE, offset]); // get the villans from the database

        const rows = result.rows; // get the rows from the result
        // get count of all villans
        const count = await pool.query('SELECT COUNT(*) FROM villans'); // get the count of all villans

        const total = count.rows[0].count; // get the total count from the result

        // add pagination information to the response
        res.json({
            pagination: { // add pagination information to the response
                currentPage: page, // send the current page
                itemsPerPage: ITEMS_PER_PAGE, // send the number of items per page
                totalItems: total, // send the total number of items
                totalPages: Math.ceil(total / ITEMS_PER_PAGE), // calculate the total number of pages
            },
            villans: rows // send the villans
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}


//get a villan by villan_name

export const getVillan = async (req, res) => {
    try {
        const { villan_name } = req.params.villan_name.toLowerCase(); // get the villan_name from the request parameters
        const result = await pool.query(`
            SELECT 
                c.*, 
                v.id AS villan_id, 
                v.villan_name, 
                v.villan_description, 
                v.villan_artwork, 
            FROM 
                character c
            JOIN 
                villans v ON c.id = v.character_id
            WHERE 
                v.villan_name = $1
        `, [villan_name]); // get the villan from the database
        res.json(result.rows); // send the villan
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}