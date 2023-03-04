DROP DATABASE ChickenFarm;

CREATE DATABASE ChickenFarm;
USE ChickenFarm;

CREATE TABLE Breed (
    name VARCHAR(100) PRIMARY KEY NOT NULL,
    averageProductivity FLOAT(6, 3) NOT NULL,
    averageWeight FLOAT(6, 3) NOT NULL,
    dietNumber INTEGER NOT NULL
);

CREATE TABLE Employee (
    passport BIGINT UNSIGNED PRIMARY KEY NOT NULL,
    surname VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    patronymic VARCHAR(50) NULL,
    birthdate DATE NOT NULL,
    salary INTEGER NOT NULL
);

CREATE TABLE Cage (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    workshopNumber INTEGER NOT NULL,
    rowNumber INTEGER NOT NULL,
    cageNumber INTEGER NOT NULL,
    employeePassport BIGINT UNSIGNED NOT NULL,

    FOREIGN KEY (employeePassport) REFERENCES Employee(passport),
    UNIQUE (workshopNumber, rowNumber, cageNumber)
);

CREATE TABLE Chicken (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    productivity FLOAT(6, 3) NOT NULL,
    weight FLOAT(6, 3) NOT NULL,
    birthdate DATE NOT NULL,
    breedName VARCHAR(100) NOT NULL,
    cageId INTEGER NOT NULL,

    FOREIGN KEY (breedName) REFERENCES Breed(name),
    FOREIGN KEY (cageId) REFERENCES Cage(id)
);

INSERT INTO Breed VALUES
    ('Леггорн', 24.8, 1.75, 1),
    ('Ломан Браун', 25.9, 1.8, 1),
    ('Доминант', 24.2, 2.1, 2),
    ('Белая русская', 17.7, 1.7, 1),
    ('Тетра', 23.4, 2.5, 3);

INSERT INTO Employee VALUES
    (5191260804, 'Мутин', 'Владимир', 'Владимирович', DATE('1989-07-10'), 100000),
    (7000211308, 'Пенин', 'Владимир', 'Ильич', DATE('1989-04-22'), 40000),
    (4448810199, 'Моральный', 'Алексей', 'Анатольевич', DATE('1995-06-04'), 45000),
    (9173678314, 'Маск', 'X AE A-12', NULL, DATE('1989-07-10'), 32000),
    (9218504903, 'Мучной', 'Александр', 'Борисович', DATE('1989-05-16'), 31000),
    (4738843289, 'Обломов', 'Илья', 'Ильич', DATE('1987-02-06'), 30000),
    (8449079570, 'Раскольников', 'Родион', 'Романович', DATE('1988-12-05'), 29000);

INSERT INTO Cage VALUES
    (1, 1, 1, 1, 5191260804),
    (2, 1, 1, 2, 5191260804),
    (3, 1, 1, 3, 5191260804),
    (4, 1, 1, 4, 5191260804),
    (5, 1, 2, 1, 5191260804),
    (6, 1, 2, 2, 5191260804),
    (7, 1, 2, 3, 5191260804),
    (8, 1, 2, 4, 7000211308),
    (9, 1, 3, 1, 7000211308),
    (10, 1, 3, 2, 7000211308),
    (11, 2, 3, 3, 7000211308),
    (12, 1, 3, 4, 9173678314),
    (13, 1, 4, 1, 9173678314),
    (14, 1, 4, 2, 9218504903),
    (15, 1, 4, 3, 9218504903),
    (16, 1, 4, 4, 4738843289),
    (17, 2, 1, 1, 4738843289),
    (18, 2, 1, 2, 8449079570),
    (19, 2, 1, 3, 8449079570);

INSERT INTO Chicken VALUES
    (DEFAULT, 25.50, 1.40, DATE('2019-12-12'), 'Ломан Браун', 1),
    (DEFAULT, 25.70, 2.10, DATE('2019-08-15'), 'Ломан Браун', 2),
    (DEFAULT, 23.80, 2.60, DATE('2019-05-13'), 'Тетра', 3),
    (DEFAULT, 18.00, 1.40, DATE('2019-11-01'), 'Белая русская', 6),
    (DEFAULT, 24.01, 2.20, DATE('2019-11-02'), 'Доминант', 7),
    (DEFAULT, 17.90, 1.80, DATE('2019-12-25'), 'Белая русская', 8),
    (DEFAULT, 24.90, 1.65, DATE('2019-10-11'), 'Леггорн', 10),
    (DEFAULT, 25.80, 1.70, DATE('2019-10-20'), 'Ломан Браун', 11),
    (DEFAULT, 26.10, 2.10, DATE('2019-03-21'), 'Ломан Браун', 12),
    (DEFAULT, 25.10, 2.15, DATE('2020-02-07'), 'Леггорн', 13),
    (DEFAULT, 23.20, 2.10, DATE('2019-01-04'), 'Тетра', 14),
    (DEFAULT, 23.90, 2.20, DATE('2019-02-26'), 'Доминант', 15),
    (DEFAULT, 25.70, 1.70, DATE('2019-03-02'), 'Ломан Браун', 16),
    (DEFAULT, 26.30, 2.20, DATE('2019-03-22'), 'Ломан Браун', 17),
    (DEFAULT, 24.40, 1.45, DATE('2019-09-11'), 'Леггорн', 19);
