--Can use temp tables mutliple times not just once

CREATE TABLE #temp_Employee (
	EmployeeID int,
	JobTitle varchar(100),
	Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee 
VALUES (
	'1001', 'HR', '45000'

)

INSERT INTO #temp_Employee
SELECT *
FROM ProjectPortfolio.dbo.EmployeesSalary

---------------------------------------------
DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
	JobTitle varchar(50),
	EmployeesPerJob int,
	AvgAge int,
	AvgSalary int
)


INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM ProjectPortfolio.dbo.EmployeesDemographics dem
JOIN ProjectPortfolio.dbo.EmployeesSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee2

