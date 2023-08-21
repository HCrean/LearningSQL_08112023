CREATE TABLE EmployeeErrors (
	EmployeeID varchar(50),
	FirstName varchar(50),
	LastName varchar (50)
)

INSERT INTO EmployeeErrors VALUES
	('1001 ','Jimbo','Halbert'),
	(' 1002','Pamela','Beasely'),
	('1005','TOby','Flenderson - Fired')

SELECT * 
FROM EmployeeErrors

--Using TRIM, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

--Using Replace
SELECT LastName, 
	   REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


--Using  Substring

SELECT SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors

SELECT SUBSTRING(err.FirstName,1,3), 
	   SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeesDemographics dem
	ON SUBSTRING(err.FirstName, 1, 3) 
	 = SUBSTRING(dem.FirstName, 1, 3)

--Using Upper and Lower
--Take all characters in text and make them upper or lower
SELECT FirstName, UPPER(FirstName)
From EmployeeErrors