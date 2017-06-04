DROP VIEW IF EXISTS totalwins;

/* create a view containing teamids and number of wins */ 
CREATE VIEW totalwins AS 
SELECT teamid, COUNT(s.result) wins FROM 
scoreboard s WHERE s.result = 'W'
GROUP BY(teamid);

/* print select the name of the team with the most wins from totalwins by
	comparing teamid in totalwins with that in teams */
SELECT n.name, t.wins FROM teams n, totalwins t, 
(SELECT MAX(t.wins) maxwins from
totalwins t) getmax WHERE t.wins = 
maxwins AND t.teamid = n.teamid;


