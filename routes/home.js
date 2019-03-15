/**
 * @author Lars Nordstrom <lars.nordstrom@jgy.se>
 */
const express = require("express");
const router = express.Router();
const db = require("../db/dbConn");

// server root
router.get("/", (req, res) => {
    res.send("<h1>Home route</h1>");
})

module.exports = router;