// Dependencies and DB connection
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


// connect ID
connection.connect((err) => {
    if (err) throw err
    console.log("Connected as Id" + connection.threadId)
    startPrompt();
});

function startPrompt() {
    inquirer.prompt([
        {
            type: "list",
            message: "What would you like to do?",
            choices: [
                "View all employees",
                "View All employee's by role",
                "View all employees by Department",
                "Update Employee",
                "Add an Employee",
                "Add Role",
                "Add Department"
            ]
        }
    ]).then(function(val) {
        switch(val.choice) {
            case "View All Employees":
                viewAllEmployees();
                break;
            case "View All employee's by role":
                viewByRole();
                break;
            case "View all employees by Department":
                viewByDepartment();
                break;
            case "Update Employee":
                updateEmployee();
                break;
            case "Add an Employee":
                addEmployee();
                break;
            case "Add Role":
                addEmployeeRole();
                break;
            case "Add Department":
                addDepartment();
                break;
        }
    })
}

