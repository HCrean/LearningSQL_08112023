SELECT JobTitle, COUNT(JobTitle) as TotalPeople
FROM ProjectPortfolio.dbo.EmployeesDemographics
JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID 
		= EmployeesSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) >1

--HAVING is completely dependent on GROUP BY
--Can't use the aggregate function and where statement

SELECT JobTitle, AVG(Salary)
FROM ProjectPortfolio.dbo.EmployeesDemographics
JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID 
		= EmployeesSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

