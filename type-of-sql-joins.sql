CREATE TABLE EmployeeDetails (
  EmpId int PRIMARY KEY,
  EmpFirstName varchar(50),
  EmpLastName varchar(50),
  Department varchar(50),
  DepartID int
)

CREATE TABLE EmpSalary (
  EmpID int,
  EmpFullName varchar(80),
  EmpSalary int,
  EmpWorkingYears int
)

SELECT
  *
FROM EmpSalary

INSERT INTO EmpSalary (EmpId, EmpFullName)
  VALUES (1007, 'Priyanka Sharma')

INSERT INTO EmpSalary (EmpId, EmpFullName)
  VALUES (1008, 'Sahil verma')


INSERT INTO EmployeeDetails
  VALUES (1001, 'Bhavana', 'Sharma', 'IT', 2)
INSERT INTO EmployeeDetails
  VALUES (1002, 'Varun', 'Sharma', 'IT', 2)
INSERT INTO EmployeeDetails
  VALUES (1003, 'Jaspreet', 'Kaur', 'Accounts', 3)
INSERT INTO EmployeeDetails
  VALUES (1004, 'Shruti', 'Kalia', 'HR', 1)
INSERT INTO EmployeeDetails
  VALUES (1005, 'Shaili', 'Verghese', 'IT', 2)
INSERT INTO EmployeeDetails
  VALUES (1006, 'Rakesh', 'Dubey', 'Accounts', 3)
-----------------------------------
SELECT
  *
FROM EmpSalary

INSERT INTO EmpSalary
  VALUES (1001, 'Bhavana Sharma', 35000, 3)
INSERT INTO EmpSalary
  VALUES (1002, 'Varun Sharma', 25000, 2)
INSERT INTO EmpSalary
  VALUES (1003, 'Jaspreet Kaur', 20000, 2)
INSERT INTO EmpSalary
  VALUES (1004, 'Shruti Kalia', 18000, 1)
INSERT INTO EmpSalary
  VALUES (1005, 'Shaili Verghese', 25000, 2)
INSERT INTO EmpSalary (EmpFullName, EmpSalary, EmpWorkingYears)
  VALUES ('Ramesh Kumar', 6000, 1)


SELECT
  *
FROM EmpSalary
SELECT  * FROM EmployeeDetails
-- \inner join
SELECT
  EmployeeDetails.EmpId,
  EmployeeDetails.EmpFirstName,
  EmpSalary.EmpSalary
FROM EmployeeDetails
JOIN EmpSalary
  ON EmployeeDetails.EmpId = EmpSalary.EmpID

--  Left outer join

SELECT
  e.EmpId,
  e.EmpFirstName,
  e.DepartID,
  s.EmpSalary
FROM EmployeeDetails e
LEFT OUTER JOIN EmpSalary s
  ON e.EmpId = s.EmpID

SELECT
  e.EmpId,
  e.EmpFirstName,
  e.DepartID,
  s.EmpSalary
FROM EmployeeDetails e
RIGHT OUTER JOIN EmpSalary s
  ON e.EmpId = s.EmpID

SELECT
  e.EmpId,
  e.EmpFirstName,
  e.DepartID,
  s.EmpSalary
FROM EmployeeDetails e
FULL OUTER JOIN EmpSalary s
  ON e.EmpId = s.EmpID

-- Cross join
SELECT
  EmployeeDetails.EmpId,
  EmployeeDetails.EmpFirstName,
  EmpSalary.EmpSalary
FROM EmployeeDetails
CROSS JOIN EmpSalary
--on EmployeeDetails.EmpId = EmpSalary.EmpID

-- Equi Join

SELECT
  *
FROM EmployeeDetails
JOIN EmpSalary
  ON EmployeeDetails.EmpId = EmpSalary.EmpID

-- Self Join
SELECT
  *
FROM EmployeeDetails
ALTER TABLE EmployeeDetails
ADD ManagerID int

UPDATE EmployeeDetails
SET ManagerID = 1002
WHERE empid = 1001
UPDATE EmployeeDetails
SET ManagerID = 1002
WHERE empid = 1005
UPDATE EmployeeDetails
SET ManagerID = 1006
WHERE empid = 1003
UPDATE EmployeeDetails
SET ManagerID = 1004
WHERE empid = 1007
UPDATE EmployeeDetails
SET ManagerID = 1004
WHERE empid = 1008

SELECT
  *
FROM EmployeeDetails

SELECT
  a.EmpId,
  a.EmpFirstName AS ManagerName,
  b.EmpId AS ManagerID,
  b.EmpFirstName AS EmployeeName
FROM EmployeeDetails a,
     EmployeeDetails b
WHERE a.EmpId = b.ManagerID

CREATE TABLE computer (
  CompID int,
  computerDes varchar(100),
  Price int
)

DELETE FROM computer
WHERE CompID = 2
INSERT INTO computer
  VALUES (1, 'Pentium 4,1GB RAM', 25000)
INSERT INTO computer
  VALUES (2, 'Dual Core,2GB RAM', 35000)
CREATE TABLE Addon (
  id int,
  description varchar(100),
  price int
)
INSERT INTO Addon
  VALUES (1, 'Speakers', 5000)
INSERT INTO Addon
  VALUES (2, 'printer', 15000)

SELECT
  *
FROM computer
SELECT
  *
FROM Addon


SELECT
  computer.computerDes,
  Addon.description,
  computer.Price + Addon.price AS totalprice
FROM computer
CROSS JOIN Addon
--on EmployeeDetails.EmpId = EmpSalary.EmpID 
