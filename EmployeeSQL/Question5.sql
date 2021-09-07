SELECT
	first_name AS 'First Name',
    last_name AS 'Last Name',
    sex AS 'Sex'
FROM Employees
WHERE first_name LIKE "Hercules"
AND last_name LIKE "B%";