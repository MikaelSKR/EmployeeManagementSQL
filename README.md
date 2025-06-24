# 📊 Employee Management System – SQL Project

This project is a SQL-based **Employee Management System** designed to model a company’s workforce structure, including departments, employee roles, project assignments, and working hours. It also includes a set of analytical queries to derive business insights from the data.

---

## 🧾 Overview

The system provides:
- A relational schema with realistic data for departments, employees, and projects
- Proper use of foreign keys and primary keys to maintain referential integrity
- Analytical queries to explore salary trends, workforce distribution, and gender breakdowns

---

## 🏗️ Database Schema

### 🧍 Employees
| Column        | Description              |
|---------------|--------------------------|
| employee_id   | Primary Key              |
| first_name    | Employee first name      |
| last_name     | Employee last name       |
| role          | Job title/role           |
| gender        | Male/Female              |
| salary        | Salary in USD            |
| hire_date     | Date of hiring           |
| department_id | Foreign Key → Departments |

### 🏢 Departments
| Column               | Description               |
|----------------------|---------------------------|
| department_id        | Primary Key               |
| department_name      | Department name           |
| department_manager_id| Foreign Key → Employees   |

### 📁 Projects
| Column        | Description              |
|---------------|--------------------------|
| project_id    | Primary Key              |
| project_name  | Name of the project      |
| start_date    | Start date of the project|
| department_id | Foreign Key → Departments |

### ⏱️ Works_On
| Column      | Description                          |
|-------------|--------------------------------------|
| project_id  | Foreign Key → Projects               |
| employee_id | Foreign Key → Employees              |
| work_hours  | Hours the employee worked on project |

🔸 **Note:** `Works_On` originally uses `project_id` and `work_hours` as a composite primary key, but a better approach would be `PRIMARY KEY (project_id, employee_id)` to prevent data anomalies.

---

## 🧠 Sample Analytical Queries

### 1. View All Employees
```sql
SELECT * FROM employees;
