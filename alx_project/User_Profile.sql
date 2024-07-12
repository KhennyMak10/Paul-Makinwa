CREATE DATABASE "USER_PROFILE"
CREATE TABLE USER_ID (user_ids INT PRIMARY KEY NOT NULL,
 "First_name" VARCHAR (45) NOT NULL, "Last_name" VARCHAR (45) NOT NULL, "Age" INT NOT NULL, 
	"Occupation"  VARCHAR (45), "School_Certificate" VARCHAR (45), "State_of_Origin" VARCHAR (45))   
;

SELECT *
FROM USER_ID;
---creating the names---
INSERT INTO USER_ID (user_ids, "First_name", "Last_name", "Age", "Occupation", "School_Certificate", "State_of_Origin")
VALUES (1, 'Paul', 'Makinwa', 29, 'Civil Servant', 'Bachelors Degree', 'Osun State'),
---creating the names--	
INSERT INTO USER_ID (user_ids, "First_name", "Last_name", "Age", "Occupation", "School_Certificate", "State_of_Origin")	
VALUES (2, 'Anuoluwapo', 'Akintola', 28, 'Business Woman', 'Masters Degree', 'Osun State'),
	(3, 'Abigail', 'Adamson', 26, 'Brand Executive', 'Bachelors Degree', 'Benue State');

---creating the names--
INSERT INTO USER_ID (user_ids, "First_name", "Last_name", "Age", "Occupation", "School_Certificate", "State_of_Origin")	
VALUES (4, 'Dorcas', 'Akinyele', 19, 'Student', 'Secondary School', 'Ondo State'),
	(5, 'Dapo', 'Fashola', 31, 'Graphic Designer', 'Bachelors Degree', 'Lagos State'),
	(6, 'Ayokunle', 'Isaiah', 27, 'Marketer', 'Bachelors Degree', 'Ekiti State'),
	(7, 'Funmilayo', 'Olaifa', 32, 'Supervisor', 'Bachelors Degree', 'Oyo State'),
	(8, 'Toyin', 'Akeshinro', 46, 'Nurse', 'Medical Degree', 'Ekiti State'),
	(9, 'Shola', 'Kareem', 34, 'Data Analyst', 'Masters Degree', 'Osun State'),
	(10, 'Temitope', 'Daniel', 27, 'Graphics Designer', 'Bachelors Degree', 'Oyo State');

---LIMIT---
SELECT *
FROM USER_ID
LIMIT 5;

---ORDER BY---
SELECT *
FROM USER_ID
ORDER BY "School_Certificate";

---MAX---
SELECT MAX("Age") as Max_age
from public.user_id;

---MIN---
SELECT min("Age") as Min_age
from public.user_id;

---GROUP BY---
SELECT MAX("Age") as Max_age, "First_name"
from public.user_id
GROUP BY "First_name";

---CREATE EMPLOYEE TABLE---
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

---EMPLOYEES DATA---
SELECT *
FROM employees;

---INPUTTING DATA INTO EMPLOYEE---
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, job_title, salary, department_id) 
VALUES
(01, 'Paul', 'Makinwa', 'paul.makinwa@gmail.com', '2024-01-01', 'Civil Servant', 50000.00, 1),
(02, 'Anuoluwapo', 'Akintola', 'anuoluwapo.akintola@gmail.com', '2024-02-01', 'Business Woman', 70000.00, 2),
(03, 'Abigail', 'Adamson', 'abigail.adamson@gmail.com', '2024-03-01', 'Brand Executive', 60000.00, 3),
(04, 'Dorcas', 'Akinyele', 'dorcas.akinyeke@gmail.com', '2024-04-01', 'Student', 20000.00, 4),
(05, 'Dapo', 'Fashola', 'dapo.fashola@gmail.com', '2024-05-01', 'Graphic Designer', 55000.00, 5),
(06, 'Ayokunle', 'Isaiah', 'ayokunle.isaiah@gmailcom', '2024-06-01', 'Marketer', 45000.00, 6),
(07, 'Funmilayo', 'Olaifa', 'funmilayo.olaifa@gmail.com', '2024-07-01', 'Supervisor', 65000.00, 7),
(08, 'Toyin', 'Akeshinro', 'toyin.akeshinro@gmail.com', '2024-08-01', 'Nurse', 60000.00, 8),
(09, 'Shola', 'Kareem', 'shola.kareem@gmail.com', '2024-09-01', 'Data Analyst', 70000.00, 9),
(10, 'Temitope', 'Daniel', 'temitope.daniel@gmail.com', '2024-10-01', 'Graphics Designer', 55000.00, 10);
