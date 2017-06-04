DROP TABLE IF EXISTS playerinfo;

/* create table with player info and a foreign key to players */

CREATE TABLE playerinfo	(		age		INTEGER(2) NOT NULL,
					height		INTEGER(4) NOT NULL,
					weight		INTEGER(4) NOT NULL,
					playerid	INTEGER(4) PRIMARY KEY,
					CONSTRAINT play_id
					FOREIGN KEY(playerid)
					REFERENCES players(playerid)
					ON DELETE CASCADE
			);
