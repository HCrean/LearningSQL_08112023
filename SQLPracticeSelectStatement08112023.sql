SELECT FirstName, LastName
FROM EmployeesDemographics

--* is wildcard

SELECT TOP 5 *
FROM EmployeesDemographics

--Distinct means we want the unique values from a specific column
SELECT DISTINCT (EmployeeID)
FROM EmployeesDemographics

SELECT DISTINCT(Gender)
FROM EmployeesDemographics

--Count shows all of the non normal values within a column
SELECT COUNT(LastName) as LastNameCount
FROM EmployeesDemographics

--Max and Averages
SELECT MAX(Salary)
FROM EmployeesSalary

SELECT MIN(Salary)
FROM EmployeesSalary

SELECT AVG(Salary)
FROM EmployeesSalary

--FROM STATEMENT
--[Database].dbo.[Table Name]
