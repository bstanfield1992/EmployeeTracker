-- Create database if it doesn't exist already
DROP DATABASE IF EXISTS employee_trackerDB;

CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

-- Department table

CREATE TABLE department (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  FOREIGN KEY (role_id) REFERENCES role(id),
  manager_id VARCHAR(60) NULL
);

-- Fill department table

INSERT INTO department (department_name)
VALUES
  ('Sales'),
  ('Engineering'),
  ('Finance'),
  ('Legal');
 
-- Fill role table

INSERT INTO role (title, salary, department_id )
VALUES
  ('Sales Lead', 100000, 1),
  ('Salesperson', 80000, 1),
  ('Lead Engineer', 150000, 2),
  ('Software Engineer', 1200000, 2),
  ('Accountant', 1250000, 3),
  ('Legal Team Lead', 250000, 4),
  ('Lawyer', 190000, 4); 

-- Fill employee table

INSERT INTO employee (first_name, last_name, role_id, manager_id )
VALUES
  ('John', 'Doe', 1, null),
  ('Mike', 'Chan', 2, 1),
  ('Ashley', 'Rodriguez', 3, null),
  ('Kevin', 'Tupik', 4, 3),
  ('Malia', 'Brown', 5, null),
  ('Sarah', 'Lourd', 6, 7),
  ('Tom', 'Allen', 7, null),
  ('Tammer', 'Galal', 4, 3);  