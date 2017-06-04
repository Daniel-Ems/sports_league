DROP VIEW IF EXISTS winscore;
DROP VIEW IF EXISTS lossscore;
DROP VIEW IF EXISTS rawtable;

/*create a view that isolates teamids, gameids, points  and 'W' */
CREATE VIEW winscore AS SELECT 
gameid, teamid, points winpoints
FROM scoreboard WHERE 
result = 'W';

/* Create a view that isolates teamids, gameids, points and 'L' */
CREATE VIEW lossscore AS SELECT
gameid, teamid, points losspoints
FROM scoreboard WHERE 
result = 'L';

/*create a view that associates teamids to games, and final scores */
CREATE VIEW rawtable AS SELECT l.gameid,
l.teamid lost, w.teamid won,
CONCAT(winpoints, "-", losspoints)
finalscore FROM lossscore l,
winscore w WHERE l.gameid = w.gameid;

/*replace the teamids with names */
SELECT winners.won, losers.lost, finalscore FROM
(SELECT t.name lost, gameid FROM rawtable,
teams t WHERE lost = t.teamid)losers,
(SELECT t.name won, gameid FROM rawtable, teams t
WHERE won = t.teamid)winners, 
rawtable r WHERE losers.gameid = 
winners.gameid AND losers.gameid = r.gameid;
