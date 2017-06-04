
/* Select the name of the team that has the most points */
SELECT t.name, s.points 
	FROM teams t, scoreboard s 
	WHERE s.points = 
	(SELECT MAX(points) FROM scoreboard)
	AND s.teamid = t.teamid;


