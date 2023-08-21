--Stored procedures can be used over the network by several users
--Will lower traffic and increase peformance

CREATE PROCEDURE TEST
AS 
SELECT *
FROM EmployeesDemographics

EXEC TEST



CREATE PROCEDURE Temp_Employees
AS 
CREATE TABLE #temp_employees (
JobTitle varchar (100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)


INSERT INTO #temp_employees
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM ProjectPortfolio.dbo.EmployeesDemographics emp
JOIN ProjectPortfolio.dbo.EmployeesSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_employees

EXEC Temp_Employees @JobTitle = 'Salesman'