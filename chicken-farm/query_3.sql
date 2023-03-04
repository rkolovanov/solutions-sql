USE ChickenFarm;

SET @Age = 2;
SET @Diet = 1;

# В каких клетках находятся куры указанного возраста с заданным номером диеты?

SELECT
    Cage.workshopNumber,
    Cage.rowNumber,
    Cage.cageNumber
FROM
    Chicken
    INNER JOIN Breed on Chicken.breedName = Breed.name
    INNER JOIN Cage on Chicken.cageId = Cage.id
WHERE
    Breed.dietNumber = @Diet AND YEAR(NOW()) - YEAR(Chicken.birthdate) = @Age
ORDER BY Cage.workshopNumber, Cage.rowNumber, Cage.cageNumber;
