-- Count the number of athletes from each country:
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Calculate the total medals won by each country:
SELECT
TeamCountry,
SUM(Gold) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
FROM medals
GROUP BY TeamCountry;

-- Calculate the average number of entries by gender for each discipline:
SELECT Discipline,
AVG(Female) Avg_Female,
AVG(Male) Avg_Male
FROM entriesgender
GROUP BY Discipline;