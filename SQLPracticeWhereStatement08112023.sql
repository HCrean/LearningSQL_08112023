--Where statement limits the amount of data and specifies the returns

--Equals
SELECT * 
FROM EmployeesDemographics
WHERE FirstName = 'JIM'

--Does not equal
SELECT * 
FROM EmployeesDemographics
WHERE FirstName <> 'JIM'

--Greater Than
SELECT *
FROM EmployeesDemographics
WHERE Age > 30

--Greater than and Equal to
SELECT *
FROM EmployeesDemographics
WHERE Age >= 30

--And statement needs both criteria to be correct
SELECT * 
FROM EmployeesDemographics
WHERE Age <= 32 AND Gender = 'Male'

--Or statement needs either critera to be correct
SELECT * 
FROM EmployeesDemographics
WHERE Age <= 32 OR Gender = 'Male'

--LIKE statements, usually used for text
SELECT * 
FROM EmployeesDemographics
WHERE LastName LIKE '%s%'

SELECT * 
FROM EmployeesDemographics
WHERE LastName LIKE 'S%o%'

--Null searches for columns without data
--Not Null searches for columns with data
--In is multiple equal statements
SELECT * 
FROM EmployeesDemographics
WHERE FirstName IN ('Jim', 'Michael','Pam')
