--Join combines both tables based on a common column
--Unions allow you to select all data from both tables 
-------and put it into one table, with no duplicate columns


Insert into EmployeesDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')


Create Table WareHouseEmployeesDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)


Insert into WareHouseEmployeesDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

SELECT * 
FROM ProjectPortfolio.dbo.EmployeesDemographics
UNION
SELECT *
FROM ProjectPortfolio.dbo.WareHouseEmployeesDemographics

SELECT *
FROM ProjectPortfolio.dbo.EmployeesDemographics
FULL OUTER JOIN ProjectPortfolio.dbo.WareHouseEmployeesDemographics
	ON EmployeesDemographics.EmployeeID =
		WareHouseEmployeesDemographics.EmployeeID


SELECT EmployeeID, FirstName, Age 
FROM ProjectPortfolio.dbo.EmployeesDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM ProjectPortfolio.dbo.EmployeesSalary
--Be careful when using union and make sure data
--------selected is the same