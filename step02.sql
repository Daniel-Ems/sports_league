/* Ensure there is no conflicting data */
DROP TABLE IF EXISTS players;

CREATE TABLE players (		playerid	INTEGER(4) PRIMARY KEY,
				firstname	VARCHAR(20) NOT NULL,
				lastname	VARCHAR(20) NOT NULL,
				jerseynum	INTEGER(2),
				teamid		INTEGER(4), 
				CONSTRAINT team_id
				FOREIGN KEY(teamid)
				rEFERENCES teams(teamid)
				ON DELETE CASCADE
			);
