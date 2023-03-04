USE ChickenFarm;

# Сколько кур каждой породы в каждом цехе?

SELECT
    Cage.workshopNumber,
    Chicken.breedName,
    COUNT(*) as count
FROM
    Cage
    INNER JOIN Chicken on Cage.id = Chicken.cageId
GROUP BY Cage.workshopNumber, Chicken.breedName;

