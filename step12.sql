DROP VIEW IF EXISTS gamestats;

/* create a view that contains accumulated scores based off of gameids */

CREATE VIEW gamestats AS 
SELECT SUM(points) points, gameid
FROM scoreboard WHERE gameid =
gameid GROUP BY (gameid);


/* select the max from the view created */
SELECT MAX(points) highestscore FROM gamestats;

