
/* identif the tallest player, and then print thier name based off their player id*/

SELECT CONCAT(p.firstname, " ", p.lastname) name,
i.height FROM players p, playerinfo i 
WHERE p.playerid = i.playerid AND
i.playerid = (SELECT playerid FROM playerinfo WHERE 
height = (SELECT MAX(height) FROM playerinfo));


