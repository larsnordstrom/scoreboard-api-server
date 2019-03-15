/**
 * @author Lars Nordstrom <lars.nordstrom@jgy.se>
 */
const express = require("express");
const router = express.Router();
const db = require("../db/dbConn");

// server root
router.get("/api/user", (req, res) => {
    res.send("<h1>Home User route</h1>");
})

// Get all scores
router.get("/api/users/all", (req, res) => {
    let queryString = "SELECT * FROM highscores ORDER BY score DESC";
    db().query(queryString, (error, rows, fields) => {
        
        if(error) {
            res.sendStatus(500);
            res.end();
            return;
        };
        
       const data = rows.map( (row) => {
           return {Id: row.id, Tag: row.gamertag, Score: row.score};
       });
       res.json(data);
    });
});

module.exports = router;