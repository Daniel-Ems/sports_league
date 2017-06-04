/* Ensure there is no conflicting data */
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;

CREATE TABLE teams (		name		VARCHAR(20),
				teamid		INTEGER(4) PRIMARY KEY NOT NULL
			);
