use  fullstack;
create table employee(
    empId varchar(10) PRIMARY KEY,
    empName varchar(15),
    empAge int,
    dept varchar(10),
    salary varchar(20)
);
insert into employee (empId,  empName, empAge,  dept, salary )values
('E101', 'Rahul', 28, 'IT', '45000'),
('E102', 'Anita', 32, 'HR', '52000'),
('E103', 'Vikas', 26, 'Sales', '38000'),
('E104', 'Priya', 29, 'Finance', '60000'),
('E105', 'Amit', 35, 'Admin', '55000'),
('E106', 'Sneha', 24, 'IT', '42000');

select * from employee;
SELECT * FROM employee WHERE dept='IT';
 SELECT * FROM employee ORDER BY salary;
 select * FROM employee WHERE dept='HR' AND empage>25;
 
UPDATE employee
SET salary = 48000
WHERE empId = 'E101';


DELETE FROM employee WHERE empId = 'E106';
SELECT dept, COUNT(*) AS totalEmployees
FROM employee
GROUP BY dept;


SELECT dept, AVG(salary) AS avgSalary
FROM employee
GROUP BY dept
HAVING AVG(salary) > 45000;

/*
Agregate fuction
*/
SELECT COUNT(*) AS Total_Employees FROM Employee;

SELECT SUM(salary) AS Total_Salary FROM Employee;
SELECT AVG(salary) AS Average_Salary FROM Employee;
SELECT MAX(salary) AS Highest_Salary FROM Employee;
SELECT MIN(salary) AS Lowest_Salary FROM Employee;

 -- Builtin Scalar Functions
SELECT empname, UPPER(empname) AS Name_Upper FROM Employee;

SELECT empname, LENGTH(empname) AS Name_Length FROM Employee;

SELECT empname, salary, ROUND(salary, -3) AS Rounded_Salary FROM Employee;

START TRANSACTION;
SAVEPOINT sp1;
use fullstack;
UPDATE Employee SET salary = salary + 5000 WHERE dept = 'IT';

ROLLBACK TO sp1;
COMMIT;
SELECT getEmpName('E101') AS EmpName;
SELECT getEmpName('E104') AS EmpName;

CREATE TABLE Department (
    deptcode INT PRIMARY KEY,
    deptname VARCHAR(100) NOT NULL,
    empId VARCHAR(10),
    FOREIGN KEY (empId)
        REFERENCES Employee(empId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO department (deptcode, deptname, empId) VALUES
(101, 'Information Technology', 'E101'),
(102, 'Human Resources', 'E102'),
(103, 'Sales Department', 'E103'),
(104, 'Finance Department', 'E104'),
(105, 'Administration', 'E105');

SELECT e.empId, e.empName, e.dept, d.deptname
FROM employee e
INNER JOIN department d
ON e.empId = d.empId;

SELECT e.empName, d.deptname
FROM employee e
JOIN department d
ON e.empId = d.empId;

SELECT e.*
FROM employee e
JOIN department d
ON e.empId = d.empId
WHERE d.deptname = 'Information Technology';

SELECT e.empName, e.salary, d.deptname
FROM employee e
JOIN department d
ON e.empId = d.empId
WHERE e.salary > 50000;

SELECT * FROM employee;
SELECT * FROM department;




