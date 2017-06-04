DROP VIEW if EXISTS awayteams;
DROP VIEW if EXISTS hometeams;

/* create a view of the away teams and their game info */
CREATE VIEW awayteams as
SELECT name, gameid, gamedate FROM gamesplayed,
teams WHERE teamid = awayid;

/* create a view of the home teams and their game info */
CREATE VIEW hometeams as 
SELECT name, gameid FROM gamesplayed,
teams WHERE teamid = homeid;

/* select the home and away team based off their gameid */
SELECT h.name home, a.name away, 
a.gamedate FROM hometeams h, 
awayteams a WHERE a.gameid = h.gameid;

