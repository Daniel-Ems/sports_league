/* Ensure the table is not present with data when inserted */
drop table if exists gamesplayed;
drop table if exists scoreboard;
drop table if exists playerinfo;
drop table if exists players;
drop table if exists teams;

/* recreate tables post drop */
source step01.sql;
source step02.sql;
source step03.sql;
source step04.sql;
source step05.sql;


insert into teams (name, teamid) values("Blue", 1000);
insert into teams (name, teamid) values("Red", 2000);
insert into teams (name, teamid) values("Green", 3000);
insert into teams (name, teamid) values("Yellow", 4000);

insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(01, 1000, 'Cirino', 'Sharma', 8);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(02, 1000, 'Raja', 'Charron', 13);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(03, 1000, 'Shyam', 'Pahlke', 27); 
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(04, 1000, 'Luis', 'Albert', 2);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(05, 1000, 'Kaiser', 'Kris', 44);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(06, 2000, 'Alem', 'Bergman', 1);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(07, 2000, 'Swarna', 'Toselli', 10);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(08, 2000, 'Jaden', 'Achterop',12);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(09, 2000, 'Mordred', 'Clark', 15);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(10, 2000, 'Rustam', 'Rybar',26);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(11, 3000, 'Amit', 'Roy', 34); 
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(12, 3000, 'Slava', 'Fuhrmann', 28);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(13, 3000, 'Truls', 'Nussenbaum', 19);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(14, 3000, 'Djordje', 'Papke', 6); 
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(15, 3000, 'Arman', 'Zientek', 5); 
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(16, 4000, 'Raniero', 'Hyland', 17); 
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(17, 4000, 'Jaden', 'Albano', 23); 
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(18, 4000, 'Orval', 'Daniel', 50);
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(19, 4000, 'Sasha', 'Weschler', 21); 
insert into players(playerid, teamid, firstname, lastname, jerseynum) 
	values(20, 4000, 'Hammet', 'Sexton', 3);

insert into playerinfo(playerid, age, height, weight) values(01, 21, 70, 155); 
insert into playerinfo(playerid, age, height, weight) values(02, 33, 65, 185); 
insert into playerinfo(playerid, age, height, weight) values(03, 18, 73, 191); 
insert into playerinfo(playerid, age, height, weight) values(04, 27, 72, 160); 
insert into playerinfo(playerid, age, height, weight) values(05, 19, 68, 172); 
insert into playerinfo(playerid, age, height, weight) values(06, 40, 71, 183); 
insert into playerinfo(playerid, age, height, weight) values(07, 26, 75, 207); 
insert into playerinfo(playerid, age, height, weight) values(08, 20, 84, 158); 
insert into playerinfo(playerid, age, height, weight) values(0009, 32, 80, 164); 
insert into playerinfo(playerid, age, height, weight) values(0010, 37, 67, 170); 
insert into playerinfo(playerid, age, height, weight) values(0011, 25, 72, 182); 
insert into playerinfo(playerid, age, height, weight) values(0012, 29, 71, 153); 
insert into playerinfo(playerid, age, height, weight) values(0013, 34, 69, 163); 
insert into playerinfo(playerid, age, height, weight) values(0014, 38, 70, 155); 
insert into playerinfo(playerid, age, height, weight) values(0015, 28, 75, 195); 
insert into playerinfo(playerid, age, height, weight) values(0016, 29, 66, 215); 
insert into playerinfo(playerid, age, height, weight) values(0017, 30, 70, 181); 
insert into playerinfo(playerid, age, height, weight) values(0018, 26, 75, 177); 
insert into playerinfo(playerid, age, height, weight) values(0019, 32, 72, 166); 
insert into playerinfo(playerid, age, height, weight) values(0020, 33, 70, 199);


insert into gamesplayed(gameid, gamedate, starttime, homeid, awayid)
	values(1, 20170602, 1200, 1000, 4000); 
insert into gamesplayed(gameid, gamedate, starttime, homeid, awayid)
	values(2, 20170603, 1400, 2000, 3000); 
insert into gamesplayed(gameid, gamedate, starttime, homeid, awayid)
	values(3, 20170610, 0800, 2000, 1000); 
insert into gamesplayed(gameid, gamedate, starttime, homeid, awayid)
	values(4, 20170612, 2000, 3000, 4000); 
insert into gamesplayed(gameid, gamedate, starttime, homeid, awayid)
	values(5, 20170618, 1800, 1000, 3000); 
insert into gamesplayed(gameid, gamedate, starttime, homeid, awayid)
	values(6, 20170624, 1900, 4000, 2000); 


insert into scoreboard(gameid, teamid, points, result) values(1, 1000, 8, 'W');
insert into scoreboard(gameid, teamid, points, result) values(1, 4000, 6, 'L');
insert into scoreboard(gameid, teamid, points, result) values(2, 3000, 3, 'L');
insert into scoreboard(gameid, teamid, points, result) values(2, 2000, 5, 'W');
insert into scoreboard(gameid, teamid, points, result) values(3, 2000, 6, 'W');
insert into scoreboard(gameid, teamid, points, result) values(3, 1000, 2, 'L');
insert into scoreboard(gameid, teamid, points, result) values(4, 3000, 9, 'L');
insert into scoreboard(gameid, teamid, points, result) values(4, 4000, 8, 'W');
insert into scoreboard(gameid, teamid, points, result) values(5, 1000, 1, 'L');
insert into scoreboard(gameid, teamid, points, result) values(5, 3000, 2, 'W');
insert into scoreboard(gameid, teamid, points, result) values(6, 4000, 10, 'W');
insert into scoreboard(gameid, teamid, points, result) values(6, 2000, 2, 'L');
