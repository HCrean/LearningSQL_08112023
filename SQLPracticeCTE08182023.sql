--Temporary tables, only exist within the scope of the statement
--Only made in memory not in temp file

WITH CTE_Employee as (
	SELECT FirstName, 
		   LastName, 
		   Gender, 
		   Salary,
		   COUNT(Gender)OVER (PARTITION By Gender) as TotalGender,
		   AVG(Salary) OVER (PARTITION By Gender) as AvgSalary
	FROM ProjectPortfolio.dbo.EmployeesDemographics dem
	JOIN ProjectPortfolio.dbo.EmployeesSalary sal
		ON dem.EmployeeID = sal.EmployeeID
	WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary
FROM CTE_Employee

--CTE not stored, have to run each 
--query with the creation of the CTE
--SELECT statement needs to be directly after CTE