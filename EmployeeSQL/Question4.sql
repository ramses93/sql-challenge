SELECT
	A.emp_no AS 'Employee Number',
    A.first_name AS 'First Name',
    A.last_name AS 'Last Name',
    C.dept_name AS 'Department Name'
FROM Employees A
INNER JOIN DeptEmp B
	ON A.emp_no = B.emp_no
INNER JOIN Departments C
	ON B.dept_no = C.dept_no;
