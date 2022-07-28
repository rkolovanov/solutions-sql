USE ChickenFarm;

SET @EmployeePassport = 5191260804;

# Сколько яиц в день приносят куры указанного работника?

SELECT
    SUM(Chicken.productivity) / 30 as productivity
FROM
    Chicken
    INNER JOIN Cage on Chicken.cageId = Cage.id
WHERE
    Cage.employeePassport = @EmployeePassport;