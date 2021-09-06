SELECT
	A.emp_no AS 'Employee Number',
    A.last_name AS 'Last Name',
    A.first_name AS 'First Name',
    A.sex AS 'Sex',
    B.salary AS 'Salary'
FROM Employees AS A
INNER JOIN Salaries AS B
	ON A.emp_no = B.emp_no; 