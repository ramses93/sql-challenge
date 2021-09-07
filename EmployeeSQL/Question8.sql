SELECT
	last_name AS 'Last Name',
    COUNT(*) AS 'Frequency'
FROM Employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;