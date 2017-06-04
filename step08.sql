
/* Match the players information with the players name based off the players id */
SELECT CONCAT(p.lastname, ", ", p.firstname) AS name,
i.age, i.height, i.weight FROM players p, playerinfo i
	WHERE i.playerid = p.playerid
	ORDER BY(name);
