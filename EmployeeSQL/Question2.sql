SELECT
	emp_no AS 'Employee Number',
    first_name AS 'First Name',
    last_name AS 'Last Name',
    sex AS 'Sex'
FROM Employees AS A
WHERE year(hire_date) = 1986;