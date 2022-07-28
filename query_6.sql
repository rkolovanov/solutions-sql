USE ChickenFarm;

# В каком цехе находится курица, от которой получают больше всего яиц.

SELECT
    Cage.workshopNumber
FROM
    Chicken
    INNER JOIN Cage on Chicken.cageId = Cage.id
ORDER BY Chicken.productivity DESC, Cage.workshopNumber
LIMIT 1;