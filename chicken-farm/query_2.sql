USE ChickenFarm;

SET @BreedName = 'Ломан Браун';

# В каком цехе наибольшее количество кур определенной породы?

SELECT
    Cage.workshopNumber, COUNT(*) AS count
FROM
    Cage
    INNER JOIN Chicken ON Cage.id = Chicken.cageId
WHERE
    Chicken.breedName LIKE @BreedName
GROUP BY
    Cage.workshopNumber
ORDER BY
    count DESC
LIMIT 1;
