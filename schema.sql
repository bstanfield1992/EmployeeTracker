-- Create database if it doesn't exist already
DROP DATABASE IF EXISTS employee_trackerDB;

CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

-- Department table

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

-- employeeRole Table

CREATE TABLE employeeRole (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Employee Table

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    employeeRole_id INT,
    FOREIGN KEY (employeeRole_id) REFERENCES employeeRole(id)
);

-- Fill department table

INSERT INTO department (name)
VALUES 
        ("Sales"),
        ("Engineering"),
        ("Finances"),
        ("Legal");

-- Fill employeeRole table

INSERT INTO employeeRole (title, salary, department_id)
VALUES  
        ("Lead Engineer", 150000, 2),
        ("Legal Team Lead", 250000, 4),
        ("Accountant", 125000, 3),
        ("Sales Lead", 100000, 1),
        ("Salesperson", 80000, 1),
        ("Software Engineer", 120000, 2),
        ("Lawyer", 190000, 4);

-- Fill employee table

INSERT INTO employee (first_name, last_name, manager_id, employeeRole_id)
VALUES
        ("John", "Doe", 3, 4),
        ("Mike", "Chan", 1, 5),
        ("Ashley","Rodriguez",NULL,1),
        ("Kevin", "Tupik", 3, 6),
        ("Malia", "Brown", NULL, 3),
        ("Sarah", "Lourd", NULL, 2),
        ("Tom", "Allen", 6, 7);

SELECT * FROM department;
SELECT * FROM employeeRole;
SELECT * FROM employee;