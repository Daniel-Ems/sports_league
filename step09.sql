
/* Print players name and number based off of the team they are assigned */
SELECT firstname, lastname, jerseynum 
FROM players WHERE teamid = 1000
ORDER BY(jerseynum);

