--Helps in larger scripts

SELECT FirstName + ' ' + LastName as FullName
FROM ProjectPortfolio.dbo.EmployeesDemographics

--Don't have to use as, can use space

SELECT AVG(Age) as AvgAge
FROM ProjectPortfolio.dbo.EmployeesDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM ProjectPortfolio.dbo.EmployeesDemographics as Demo
JOIN ProjectPortfolio.dbo.EmployeesSalary as Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT EDemo.EmployeeID, EDemo.FirstName, Sal.JobTitle, WDemo.Age
FROM ProjectPortfolio.dbo.EmployeesDemographics EDemo
LEFT JOIN ProjectPortfolio.dbo.EmployeesSalary Sal
	ON EDemo.EmployeeID = Sal.EmployeeID
LEFT JOIN ProjectPortfolio.dbo.WareHouseEmployeesDemographics WDemo
	ON EDemo.EmployeeID = WDemo.EmployeeID