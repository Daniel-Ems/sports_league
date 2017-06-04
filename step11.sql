DROP VIEW IF EXISTS totalpoints;

/* create a view that contains the that contains the teamid and their accumuatled scores */
CREATE VIEW totalpoints AS
sELECT SUM(points) points, 
teamid FROM scoreboard WHERE
Teamid = teamid GROUP BY
teamid;

/* use the view total points to attach name to the teamid */
SELECT t.name, m.points FROM 
teams t, totalpoints m
WHERE m.points = 
(SELECT MAX(points) FROM
totalpoints) AND t.teamid = 
m.teamid;

