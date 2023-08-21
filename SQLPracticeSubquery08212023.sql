--Subquery in Select
SELECT EmployeeID, 
	   Salary, 
	   (SELECT AVG(Salary) 
	    FROM EmployeesSalary) as AllAvgSalary
FROM EmployeesSalary

--How to do it with Partition by

SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
FROM EmployeesSalary

--Why Group by doesn't work

SELECT EmployeeID, Salary, AVG(Salary) as AllAvgSalary
FROM EmployeesSalary
GROUP BY EmployeeID, Salary
ORDER BY 1, 2

--Subquery in From

Select a.EmployeeID, AllAvgSalary
From 
	(Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	 From EmployeesSalary)  a

--Subquery in Where

SELECT EmployeeID, JobTitle, Salary
FROM EmployeesSalary
WHERE EmployeeID in (
	SELECT EmployeeID
	FROM EmployeesDemographics
	WHERE AGE > 30
)