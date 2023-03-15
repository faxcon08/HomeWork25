\echo Task 1
SELECT * FROM employee;
SELECT first_name AS Фамилия, last_name AS Имя FROM employee;
SELECT * FROM employee WHERE age < 30 OR age > 50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee ORDER BY first_name DESC;
SELECT * FROM employee WHERE last_name LIKE '_____%';
\echo Task 2
UPDATE employee SET last_name='Elena' WHERE id = 1;
UPDATE employee SET last_name='Igor' WHERE id = 7;
SELECT last_name AS Имя, SUM(age) as Суммарный_возраст FROM employee GROUP BY last_name;
SELECT last_name AS Имя, age AS Возраст FROM employee WHERE age = (
    SELECT MIN(age) FROM employee);
SELECT last_name, MAX(age) FROM employee GROUP BY last_name HAVING NOT COUNT(last_name) = 1 ORDER BY MAX(age) ASC;