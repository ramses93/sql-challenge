SELECT
	A.dept_no AS 'Department Number',
    A.dept_name AS 'Department Name',
    B.emp_no AS 'Manager\'s Employee Number'
FROM Departments A
INNER JOIN DeptManager B
	ON A.dept_no = B.dept_no