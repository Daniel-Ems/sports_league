DROP TABLE IF EXISTS gamesplayed;

/* Create table for gamesplayed. */
CREATE TABLE gamesplayed	(	gameid		INTEGER(4) PRIMARY KEY,
					gamedate	DATE	NOT NULL,
					starttime	INTEGER(4) NOT NULL,
					homeid		INTEGER(4)  NOT NULL,
					awayid		INTEGER(4)  NOT NULL
				);
