SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM ProjectPortfolio.dbo.EmployeesDemographics
WHERE Age is not NULL
ORDER BY Age

--Yearly raises need to be given out according to job title
--My attempt
SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman' THEN SUM(Salary + 4000) 
	ELSE SUM(Salary + 3000)
END
FROM ProjectPortfolio.dbo.EmployeesDemographics
JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID
GROUP by FirstName, LastName, JobTitle, Salary

--Correct Answer
SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' 
		THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' 
		THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' 
		THEN Salary + (Salary * .0001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM ProjectPortfolio.dbo.EmployeesDemographics
JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID
		= EmployeesSalary.EmployeeID
