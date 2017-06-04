DROP TABLE IF EXISTS scoreboard;

/*  create table for scoreboard */
CREATE TABLE scoreboard	(		gameid		INTEGER(4)  NOT NULL,
					teamid		INTEGER(4)  NOT NULL,
					points		INTEGER(4) NOT NULL,
					result		ENUM("W", "L") NOT NULL
				);
					
