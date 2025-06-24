
-- Create the EmployeeManagement database
CREATE DATABASE IF NOT EXISTS EmployeeManagement;

-- Select the EmployeeManagement database
USE EmployeeManagement;
-- Create the departments table if it doesn't exist
CREATE TABLE IF NOT EXISTS departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    department_manager_id INT
);
-- Insert sample data into the departments table
INSERT INTO departments (department_id, department_name, department_manager_id)
VALUES
    (1, 'Sales', 1),
    (2, 'HR', 6),
    (3, 'IT', 11),
    (4, 'Marketing', 16),
    (5, 'Finance', 21);

-- Create the employees table with additional columns if it doesn't exist
CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(50),
    gender VARCHAR(10),
    salary DECIMAL(10, 2),
    hire_date DATE,
	department_id INT
);

-- Insert sample data into the employees table
INSERT INTO employees (employee_id, first_name, last_name, role, gender, salary, hire_date, department_id)
VALUES
    (1, 'John', 'Doe', 'Manager', 'Male', 50000.00, '2022-01-15', 1),
    (2, 'Jane', 'Smith', 'Engineer', 'Female', 60000.00, '2022-02-20', 2),
    (3, 'Michael', 'Johnson', 'Developer', 'Male', 70000.00, '2022-03-10', 3),
    (4, 'Emily', 'Brown', 'Analyst', 'Female', 55000.00, '2022-04-05', 4),
    (5, 'David', 'Lee', 'Designer', 'Male', 65000.00, '2022-05-12', 5),
    (6, 'Jennifer', 'Davis', 'Manager', 'Female', 52000.00, '2022-06-20', 2),
    (7, 'Daniel', 'Martinez', 'Engineer', 'Male', 61000.00, '2022-07-10', 2),
    (8, 'Sarah', 'Wilson', 'Developer', 'Female', 72000.00, '2022-08-15', 3),
    (9, 'Matthew', 'Taylor', 'Analyst', 'Male', 56000.00, '2022-09-25', 4),
    (10, 'Jessica', 'Garcia', 'Designer', 'Female', 66000.00, '2022-10-30', 5),
    (11, 'Christopher', 'Brown', 'Manager', 'Male', 51000.00, '2022-11-05', 3),
    (12, 'Amanda', 'Lopez', 'Engineer', 'Female', 62000.00, '2022-12-12', 2),
    (13, 'James', 'Hernandez', 'Developer', 'Male', 73000.00, '2023-01-20', 3),
    (14, 'Ashley', 'Gonzalez', 'Analyst', 'Female', 57000.00, '2023-02-28', 4),
    (15, 'Joshua', 'Rodriguez', 'Designer', 'Male', 67000.00, '2023-03-10', 5),
    (16, 'Brittany', 'Martinez', 'Manager', 'Female', 53000.00, '2023-04-15', 4),
    (17, 'David', 'Perez', 'Engineer', 'Male', 63000.00, '2023-05-20', 2),
    (18, 'Stephanie', 'Lewis', 'Developer', 'Female', 74000.00, '2023-06-25', 3),
    (19, 'Ryan', 'Walker', 'Analyst', 'Male', 58000.00, '2023-07-30', 4),
    (20, 'Lauren', 'Harris', 'Designer', 'Female', 68000.00, '2023-08-05', 5),
    (21, 'Eric', 'Clark', 'Manager', 'Male', 54000.00, '2023-09-10', 5),
    (22, 'Rachel', 'King', 'Engineer', 'Female', 64000.00, '2023-10-15', 2),
    (23, 'Kevin', 'Scott', 'Developer', 'Male', 75000.00, '2023-11-20', 3),
    (24, 'Megan', 'Green', 'Analyst', 'Female', 59000.00, '2023-12-25', 4),
    (25, 'Justin', 'Evans', 'Designer', 'Male', 69000.00, '2024-01-30', 5),
    (26, 'Kimberly', 'Baker', 'Manager', 'Female', 55000.00, '2024-02-05', 1),
    (27, 'Brandon', 'Adams', 'Engineer', 'Male', 65000.00, '2024-03-10', 2),
    (28, 'Samantha', 'Rivera', 'Developer', 'Female', 76000.00, '2024-04-15', 3),
    (29, 'Tyler', 'Cook', 'Analyst', 'Male', 60000.00, '2024-05-20', 4),
    (30, 'Hannah', 'Parker', 'Designer', 'Female', 70000.00, '2024-06-25', 5);

-- Create Project On table
CREATE TABLE IF NOT EXISTS Project (
project_id INT PRIMARY KEY,
project_name VARCHAR(50) NOT NULL,
start_date DATE,
department_id INT
);

-- Insert sample data into the Project table
INSERT INTO Project (project_id, project_name, start_date, department_id)
VALUES
    (1, 'Project A', '2023-01-01', 1),
    (2, 'Project B', '2023-02-01', 2),
    (3, 'Project C', '2023-03-01', 3),
    (4, 'Project D', '2023-04-01', 4),
    (5, 'Project E', '2023-05-01', 5),
    (6, 'Project F', '2023-06-01', 1),
    (7, 'Project G', '2023-07-01', 2),
    (8, 'Project H', '2023-08-01', 3);

-- Creating Works_On table
CREATE TABLE IF NOT EXISTS Works_On (
	project_id INT,
    employee_id INT,
    Work_Hours DECIMAL(10,3),
    PRIMARY KEY(project_id, Work_Hours)
);

-- Insert sample data into the Works_On table
INSERT INTO Works_On (project_id, employee_id, Work_Hours)
VALUES
    (1, 1, 20.5),
    (2, 2, 15.0),
    (3, 3, 30.0),
    (4, 4, 25.5),
    (5, 5, 40.0),
    (6, 1, 35.0),
    (7, 1, 22.5),
    (8, 2, 27.0),
    (1, 3, 18.5),
    (2, 4, 33.0),
    (3, 4, 28.0),
    (4, 5, 26.5),
    (5, 13, 41.0),
    (6, 14, 32.0),
    (7, 15, 21.5),
    (8, 16, 29.0),
    (1, 17, 24.5),
    (2, 18, 31.0),
    (3, 19, 34.5),
    (4, 20, 23.0),
    (5, 21, 30.5),
    (6, 22, 28.5),
    (7, 23, 25.0),
    (8, 2, 27.5),
    (1, 4, 26.0),
    (2, 3, 29.5);

-- adding foreign keys
ALTER TABLE Employees ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);
ALTER TABLE departments ADD FOREIGN KEY (department_manager_id) REFERENCES Employees(employee_id);
ALTER TABLE Project ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);
ALTER TABLE Works_On ADD FOREIGN KEY (project_id) REFERENCES Project(project_id);
ALTER TABLE Works_On ADD FOREIGN KEY (employee_id) REFERENCES Employees(employee_id);
