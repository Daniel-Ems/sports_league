DROP VIEW IF EXISTS maxavg;

/*create a view of the average score per game over the seasons (total points/games played)*/
/*create a view and store by teamid */
CREATE VIEW maxavg as
SELECT teamid, SUM(points)/3 pointavg
FROM scoreboard
GROUP BY (teamid);

/*Identify the name of the team with the highest average by comparing teamids in */
/*view maxavg and table teams*/
SELECT name, pointavg average FROM 
teams t, maxavg m, (
SELECT MAX(pointavg) avgmax FROM maxavg) 
topavg WHERE pointavg = avgmax 
AND t.teamid = m.teamid;
 
