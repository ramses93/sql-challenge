SELECT
	A.emp_no AS 'Employee Number',
	A.first_name AS 'First Name',
    A.last_name AS 'Last Name',
    C.dept_name AS 'Department Name'
FROM Employees A
INNER JOIN DeptEMp B
	ON A.emp_no = B.emp_no
INNER JOIN Departments C
	ON C.dept_no = B.dept_no
WHERE C.dept_name LIKE "Sales";
    