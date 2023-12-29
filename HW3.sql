-- task2
CREATE DATABASE Normalisation;

USE Normalisation;

CREATE TABLE ARSENAL
(
name varchar(20),
soldId int NOT NULL,
troop int,
buildingType varchar(4),
buildingNum int,
weapon varchar(20),
weaponID int NOT NULL,
responsable varchar(20),
rankResponsable varchar(20),
primary key(soldId, weaponID)
);

INSERT INTO ARSENAL 
(name, soldId, troop, buildingType, buildingNum, 
weapon, weaponID, responsable, rankResponsable)
VALUES
('Петров В.А.', 1, 222, 'of', 205, 'АК-47', 1, 'Буров О.С.', 'майор'),
('Петров В.А.', 1, 222, 'of', 205, 'Глок20', 2, 'Рибаков Н.Г.', 'майор'),
('Лодарев П.С.', 2, 232, 'of', 221, 'АК-74', 3, 'Деребанов В.Я.', 'підполковник'),
('Лодарев П.С.', 2, 232, 'of', 221, 'Глок20', 2, 'Рибаков Н.Г.', 'майор'),
('Іващенко А.А.', 3, 212, 'of', 201, 'АК-47', 1, 'Буров О.С.', 'майор'),
('Іващенко А.А.', 3, 212, 'of', 201, 'Глок20', 2, 'Рибаков Н.Г.', 'майор'),
('Духов Р.М.', 4, 200, '', 0, 'АК-47', 1, 'Буров О.С.', 'майор');

-- task 3

CREATE DATABASE HR;
USE HR;

CREATE TABLE Positions
(
id int auto_increment,
positionName varchar(10) NOT NULL,
primary key(id)
);

CREATE TABLE Salary
(
idSalary int auto_increment,
quantity int,
positionID int,
primary key (idSalary),
FOREIGN KEY (positionID) REFERENCES Positions(id) 
);

CREATE TABLE Workers
(name varchar(20),
workerID int auto_increment NOT NULL,
positionID int NOT NULL,
refSalary int,
primary key(workerID),
FOREIGN KEY (refSalary) REFERENCES Salary(idSalary),
FOREIGN KEY (positionID) REFERENCES Positions(id)

);

CREATE TABLE PersInfo
(
persId int auto_increment,
workerId int,
birthDate DATE,
city varchar(25),
primary key (persId),
FOREIGN KEY (workerId) REFERENCES Workers(workerID)
);