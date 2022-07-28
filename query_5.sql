USE ChickenFarm;

# Среднее количество яиц, которое получает в день каждый работник от обслуживаемых им кур?

SELECT
    Cage.employeePassport,
    SUM(Chicken.productivity) / 30 as productivity
FROM
    Chicken
    INNER JOIN Cage on Chicken.cageId = Cage.id
GROUP BY
    Cage.employeePassport;