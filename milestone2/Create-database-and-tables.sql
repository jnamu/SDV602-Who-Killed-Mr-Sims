CREATE DATABASE IF NOT EXISTS WhoKilledMrSims;

USE WhoKilledMrSims;

CREATE TABLE MapPosition
(
MapPositionID INT NOT NULL AUTO_INCREMENT,
RoomName VARCHAR(50),
MapLocation VARCHAR(50),
PRIMARY KEY(MapPositionID)
);

CREATE TABLE Player
(
PlayerID INT NOT NULL AUTO_INCREMENT,
MapPositionID INT,
Solved BOOLEAN,
PRIMARY KEY(PlayerID),
FOREIGN KEY(MapPositionID) REFERENCES MapPosition(MapPositionID)
);

CREATE TABLE Weapon
(
WeaponID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(50),
MapPositionID INT,
Guilty BOOLEAN,
PRIMARY KEY(WeaponID),
FOREIGN KEY(MapPositionID) REFERENCES MapPosition(MapPositionID)
);

CREATE TABLE NPC
(
NPCID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(50),
MapPositionID INT,
PRIMARY KEY(NPCID),
FOREIGN KEY(MapPositionID) REFERENCES MapPosition(MapPositionID)
);

CREATE TABLE Suspect
(
SuspectID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(50),
MapPositionID INT,
Guilty BOOLEAN,
PRIMARY KEY(SuspectID),
FOREIGN KEY(MapPositionID) REFERENCES MapPosition(MapPositionID)
);

CREATE TABLE Location
(
LocationID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(50),
MapPositionID INT,
Guilty BOOLEAN,
PRIMARY KEY(LocationID),
FOREIGN KEY(MapPositionID) REFERENCES MapPosition(MapPositionID)
);

CREATE TABLE Game
(
GameID INT NOT NULL AUTO_INCREMENT,
SuspectID INT,
WeaponID INT,
LocationID INT,
PRIMARY KEY(GameID),
FOREIGN KEY(SuspectID) REFERENCES Suspect(SuspectID),
FOREIGN KEY(WeaponID) REFERENCES Weapon(WeaponID),
FOREIGN KEY(LocationID) REFERENCES Location(LocationID)
);

ALTER TABLE Player
ADD SuspectID INT,
ADD WeaponID INT,
ADD LocationID INT;

ALTER TABLE Player
ADD FOREIGN KEY (SuspectID)
	REFERENCES Suspect(SuspectID);
	
ALTER TABLE Player
ADD FOREIGN KEY (WeaponID)
	REFERENCES Weapon(WeaponID);
	
ALTER TABLE Player
ADD FOREIGN KEY (LocationID)
	REFERENCES Location(LocationID);

ALTER TABLE Suspect
DROP COLUMN Guilty;

ALTER TABLE Location
DROP COLUMN Guilty;

ALTER TABLE Weapon
DROP COLUMN Guilty;