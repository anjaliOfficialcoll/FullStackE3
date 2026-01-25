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
