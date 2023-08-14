Insert into EmployeesDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly','Flax', NULL, 'Male'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

Insert into EmployeesSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)

SELECT *
FROM ProjectPortfolio.dbo.EmployeesDemographics

SELECT *
FROM ProjectPortfolio.dbo.EmployeesSalary

--INNER JOIN is both tables combined, will show everything that is the same
SELECT *
FROM ProjectPortfolio.dbo.EmployeesDemographics
JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID

--OUTER JOIN will fill any blanks with NULL values
--Will show everything regardless of match
SELECT *
FROM ProjectPortfolio.dbo.EmployeesDemographics
FULL OUTER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID


--
SELECT *
FROM ProjectPortfolio.dbo.EmployeesDemographics
LEFT OUTER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID

SELECT * 
FROM ProjectPortfolio.dbo.EmployeesDemographics
RIGHT OUTER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID

--When using joins, will probably want to select specific columns

SELECT EmployeesDemographics.EmployeeID, FirstName, LastName, Salary
FROM ProjectPortfolio.dbo.EmployeesDemographics
LEFT OUTER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID


--How to find who makes the most money.

--My attempt
SELECT EmployeesDemographics.EmployeeID, FirstName, LastName, Salary
FROM ProjectPortfolio.dbo.EmployeesDemographics
INNER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID
--WHERE FirstName is NOT = 'Michael'
ORDER BY EmployeesSalary.Salary DESC

--Correct Answer
SELECT EmployeesDemographics.EmployeeID, FirstName, LastName, Salary
FROM ProjectPortfolio.dbo.EmployeesDemographics
INNER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY EmployeesSalary.Salary DESC

--Calculate the Average Salary for salesman
--My Attempt
SELECT AVG(Salary) as AverageSalesSalary
FROM ProjectPortfolio.dbo.EmployeesDemographics
INNER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID
WHERE JobTitle = 'Salesman'

--Correct Answer
SELECT JobTitle, AVG(Salary) 
FROM ProjectPortfolio.dbo.EmployeesDemographics
INNER JOIN ProjectPortfolio.dbo.EmployeesSalary
	ON EmployeesDemographics.EmployeeID = EmployeesSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
