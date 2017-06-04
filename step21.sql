DROP VIEW IF EXISTS  totalloss;

/*Create a view of total losses and teamids*/
CREATE VIEW totalloss AS 
SELECT teamid, COUNT(result) loss 
FROM scoreboard WHERE 
result = 'L'
GROUP BY (teamid);

/*using a view already created totalwins, idetify team records by comparing teamids */
/*to the teams table, as well to both views, totalloss and totalwins */
SELECT t.name, wins, loss FROM
teams t, totalwins w, totalloss l WHERE
w.teamid = l.teamid AND
t.teamid = w.teamid
ORDER BY(wins) DESC;

