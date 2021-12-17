-- I want to know how many employees with each title were born after 1965-01-01.

 /* SELECT t.title AS 'Title', COUNT(e.emp_no) AS '# of Employees' FROM titles t
 INNER JOIN employees e USING (emp_no)
 WHERE year(e.birth_date) < 1965-01-01
 GROUP BY title;
 
 */

-- I want to know the average salary per title.

 /*SELECT avg(s.salary) AS 'Average Salary', t.title AS 'Title' FROM salaries s
 INNER JOIN titles t USING (emp_no)
 GROUP BY Title;
 */

-- How much money was spent on salary for the marketing department between the years 1990 and 1992?

  /* SELECT SUM(s.salary) AS 'Total Spent', 
 de.dept_name AS 'Marketing' FROM salaries s
INNER JOIN dept_emp d USING (emp_no)
 INNER JOIN departments de USING (dept_no)
 WHERE de.dept_name LIKE '%MARKETING%'
 AND year(s.from_date) <= 1992 AND year(s.to_date) >= 1990
 GROUP BY de.dept_name
 */
 
