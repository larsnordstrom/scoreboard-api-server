/**
 * @author Lars Nordstrom <lars.nordstrom@jgy.se>
 */
const mysql = require("mysql");

module.exports = function getConnection(){
    return mysql.createPool({
        connectionLimit: 10,
        host: process.env.HOST || "127.0.0.1",
        user: process.env.USERNAME || "user", 
        password: process.env.PASSWORD || "password", 
        database: process.env.DATABASE || "leaderboard"
    });
}