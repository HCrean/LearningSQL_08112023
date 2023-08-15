--Insert will create a new row
--Update will alter rows
--Delete will remove rows

SELECT * 
FROM ProjectPortfolio.dbo.EmployeesDemographics

UPDATE ProjectPortfolio.dbo.EmployeesDemographics
SET EmployeeID = 1012, Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' and LastName = 'Flax'



DELETE FROM ProjectPortfolio.dbo.EmployeesDemographics
WHERE EmployeeID = 1005

--Be careful when using DELETE, theres no way to undo it
--Run as SELECT first so you can see what specifically will be deleted


