USE ChickenFarm;

SET @Weight = 2.1;
SET @BreedName = 'Ломан Браун';
SET @Age = 2;

# Какое количество яиц получают от каждой курицы данного веса, породы, возраста?

SELECT
    id as chickenId,
    productivity
FROM
    Chicken
WHERE
    ABS(weight - @Weight) < 0.0001 AND breedName LIKE @BreedName AND YEAR(NOW()) - YEAR(birthdate) = @Age;
