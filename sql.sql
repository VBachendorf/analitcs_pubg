CREATE TABLE dim_player (
	grid INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"type" TEXT NOT NULL,
	id TEXT NOT NULL,
	name text NOT null,
	stats text ,
	titleId text ,
	banType text,
	clanId text,
	patchVersion TEXT,
	shardId TEXT,
	unique(id)	
);

CREATE TABLE dim_weapons(
	grid INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	id text NOT NULL,
	updated timestamp
);

CREATE TABLE weapons_player(
	grid INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	grid_dim_weapons integer NOT NULL,
	grid_dim_player integer NOT NULL,
	currentLevel integer,
	currentTier integer,
	currentXP integer,
	updated 		timestamp,
	UNIQUE( grid_dim_weapons,grid_dim_player,updated),
	FOREIGN KEY(grid_dim_weapons) REFERENCES dim_weapons(grid),
	FOREIGN KEY(grid_dim_player) REFERENCES dim_player(grid)

);

CREATE TABLE fat_weapons_player(
	grid INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	grid_weapons_player integer NOT NULL,
	match_type text NOT NULL,
	DamagePlayer	text,
	Defeats	text,
	Groggies	text,
	HeadShots	text,
	Kills	text,
	LongestKill	text,
	MostDefeatsInAGame	text,
	MostKillsInAGame	text,
	updated 		timestamp,
	UNIQUE( grid_weapons_player,match_type,updated),
	FOREIGN KEY(grid_weapons_player) REFERENCES weapons_player(grid)
);

	
	
	
	
	
