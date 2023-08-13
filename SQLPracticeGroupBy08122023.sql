
--Group by allows for dig down into data
SELECT Gender, COUNT(Gender) as GenderCount
FROM EmployeesDemographics
WHERE Age > 31
GROUP BY Gender

--Count gender is derived field, technically not a real column

--Order by
SELECT Gender, COUNT(Gender) as GenderCount
FROM EmployeesDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY GenderCount DESC
--SQL has AESC as default

SELECT *
FROM EmployeesDemographics
ORDER BY Age DESC, Gender DESC


SELECT *
FROM EmployeesDemographics
ORDER BY 4 DESC, 5 