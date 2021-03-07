// Dependencies and DB connection
const inquirer = require("inquirer");
const mysql = require("mysql");
const conTable = require("console.table");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3000,
    user: "root",
    password: "root",
    database: "employee_trackerDB"
});


// connect ID
connection.connect((err) => {
    if (err) throw err
    console.log("Connected as Id" + connection.threadId)
    startPrompt();
});

