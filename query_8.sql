USE ChickenFarm;

# Какое количество кур обслуживает каждый работник?

SELECT
    Cage.employeePassport,
    COUNT(*) as count
FROM
    Chicken
    INNER JOIN Cage on Chicken.cageId = Cage.id
GROUP BY Cage.employeePassport;