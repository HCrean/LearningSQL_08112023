SELECT *
FROM ProjectPortfolio.dbo.EmployeesDemographics

SELECT *
FROM ProjectPortfolio.dbo.EmployeesSalary

SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM ProjectPortfolio.dbo.EmployeesDemographics dem
JOIN ProjectPortfolio.dbo.EmployeesSalary sal
	ON dem.EmployeeID = sal.EmployeeID

--Partition by allows us to use aggregate functions
--on individual rows whilst maintaining other columns
