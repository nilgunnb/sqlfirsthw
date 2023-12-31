--CREATE DATABASE FIORELLO
--USE FIORELLO 
CREATE TABLE POSITIONS (
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE EMPLOYEES(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(30) NOT NULL,
[Image] VARCHAR(50) UNIQUE NOT NULL,
PositionId INT FOREIGN KEY REFERENCES POSITIONS(Id)
)

INSERT INTO POSITIONS([Name])
VALUES('Florist')

SELECT * FROM POSITIONS

INSERT INTO POSITIONS
VALUES('Manager')

SELECT * FROM POSITIONS

INSERT INTO POSITIONS
VALUES('Florist')

INSERT INTO POSITIONS
VALUES('Florist')

SELECT * FROM POSITIONS

DELETE FROM POSITIONS WHERE [Name] = 'Florist'

SELECT * FROM POSITIONS

INSERT INTO POSITIONS
VALUES('Florist')

SELECT * FROM POSITIONS

EXEC sp_rename 'dbo.POSITIONS.Name', 'Position', 'COLUMN'

SELECT * FROM POSITIONS

INSERT INTO EMPLOYEES
VALUES('Crystal', 'Books', 'image-1', 5)

SELECT * FROM EMPLOYEES

INSERT INTO EMPLOYEES
VALUES('Shirley', 'Harris', 'image-2', 2)

INSERT INTO EMPLOYEES
VALUES('Beverly', 'Clark', 'image-3', 5)

INSERT INTO EMPLOYEES
VALUES('Amanda', 'Tawkins', 'image-4', 5)

SELECT * FROM EMPLOYEES

