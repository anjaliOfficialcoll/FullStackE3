use fullstack;
ALTER TABLE  employee add column Annual_salary INT;
insert into employee(Annual_salary) VALUES
(300000),
(1000000),
(500000),
(450000),
(780000),
(200000);

-- qs1 ---
SELECT netSalary(500);


-- qs2 --
SELECT check_user_activity(25);

-- qs3 --
select calc_tax(780000);


-- qs4 ---
SELECT employee_category(7);


-- q5 --
SELECT calculate_late_fee(5);