// Dependencies
const inquirer = require("inquirer");
const mysql = require("mysql");
const conTable = require("console.table");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3000,
    user: "root",
    password: "PW4bstanfi!",
    database: "employee_trackerDB"
});

