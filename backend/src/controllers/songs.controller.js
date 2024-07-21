import { pool } from "../db.js";



//get a song by name or artist or songid


export const getSongs = async (req, res) => {

    try {
        const page = req.query.page || 1;
        const offset = (page - 1) * 10;

        const totalSongs = await pool.query('SELECT * FROM songs LIMIT $1 OFFSET $2', [10, offset]);
        const rows = totalSongs.rows;
        const count = await pool.query('SELECT COUNT(*) FROM songs');
        const totalItems = parseInt(count.rows[0].count);
        res.json({
            pagination: {
                currentPage: page,
                itemsPerPage: 10,
                totalItems: totalItems,
                totalPages: Math.ceil(totalItems / 10),
            },
            songs: rows
        });

    } catch (error) {
        res.status(500).json({ error: error.message });
        
    }

}


export const getSong = async (req, res) => {

    try {
        const param = req.params.song_name.toLowerCase();
        let song;
        song = await pool.query(
            'SELECT * FROM songs WHERE LOWER(song_name) = $1 OR LOWER(song_artist) = $1 OR LOWER(id_song_video) = $1', 
            [param]
        );
        if (song.rows.length === 0) {
            return res.status(404).json({ error: 'Song not found' });
        }
        res.json(song.rows[0]);



    } catch (error) {
        res.status(500).json({ error: error.message });
        
    }


}