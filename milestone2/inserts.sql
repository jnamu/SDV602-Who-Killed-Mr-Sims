INSERT INTO MapPosition
	(RoomName, MapLocation)
VALUES
	("Bedroom", 1),
	("Hallway1", 2),
	("Bathroom", 3),
	("Hallway2", 4),
	("Crossroad", 5),
	("Hallway3", 6),
	("Lounge", 7),
	("Hallway4", 8),
	("Kitchen", 9),
	("Patio", 10);
	
INSERT INTO Location
	(Name, MapPositionID)
VALUES
	("Bedroom", 1),
	("Bathroom", 3),
	("Lounge", 7),
	("Kitchen", 9),
	("Patio", 10);
	
INSERT INTO Weapon
	(Name, MapPositionID)
VALUES
	("Scarf", 1),
	("Poison", 3),
	("Knife", 7),
	("Cleaver", 9),
	("Gun", 10);
	
INSERT INTO Suspect
	(Name, MapPositionID)
VALUES
	("Wife - Emily Sims", 1),
	("Cleaner - Hope Gilbert", 3),
	("Mistress - Celia Maldanado", 7),
	("Neighbour - Jackie Wolfe", 9),
	("Gardener - Rodger Lee", 10);
	
INSERT INTO NPC
	(Name, MapPositionID)
VALUES
	("Brother - Karl Sims", 2),
	("Sister - Lydia Grant", 4),
	("Son - Peter Sims", 6),
	("Friend - Steve Mitchell", 8),
	("Neighbour - Mark Wolfe", 9),
	("Boss - Neil Hodges", 7);
	
INSERT INTO Game
	(SuspectID, WeaponID, LocationID)
VALUES
	(1,1,1),
	(1,1,2),
	(1,1,3),
	(1,1,4),
	(1,1,5),
	(1,2,1),
	(1,2,2),
	(1,2,3),
	(1,2,4),
	(1,2,5),
	(1,3,1),
	(1,3,2),
	(1,3,3),
	(1,3,4),
	(1,3,5),
	(1,4,1),
	(1,4,2),
	(1,4,3),
	(1,4,4),
	(1,4,5),
	(1,5,1),
	(1,5,2),
	(1,5,3),
	(1,5,4),
	(1,5,5);
	
INSERT INTO Game
	(SuspectID, WeaponID, LocationID)
VALUES
	(2,1,1),
	(2,1,2),
	(2,1,3),
	(2,1,4),
	(2,1,5),
	(2,2,1),
	(2,2,2),
	(2,2,3),
	(2,2,4),
	(2,2,5),
	(2,3,1),
	(2,3,2),
	(2,3,3),
	(2,3,4),
	(2,3,5),
	(2,4,1),
	(2,4,2),
	(2,4,3),
	(2,4,4),
	(2,4,5),
	(2,5,1),
	(2,5,2),
	(2,5,3),
	(2,5,4),
	(2,5,5);
	
INSERT INTO Game
	(SuspectID, WeaponID, LocationID)
VALUES
	(3,1,1),
	(3,1,2),
	(3,1,3),
	(3,1,4),
	(3,1,5),
	(3,2,1),
	(3,2,2),
	(3,2,3),
	(3,2,4),
	(3,2,5),
	(3,3,1),
	(3,3,2),
	(3,3,3),
	(3,3,4),
	(3,3,5),
	(3,4,1),
	(3,4,2),
	(3,4,3),
	(3,4,4),
	(3,4,5),
	(3,5,1),
	(3,5,2),
	(3,5,3),
	(3,5,4),
	(3,5,5);
	
INSERT INTO Game
	(SuspectID, WeaponID, LocationID)
VALUES
	(4,1,1),
	(4,1,2),
	(4,1,3),
	(4,1,4),
	(4,1,5),
	(4,2,1),
	(4,2,2),
	(4,2,3),
	(4,2,4),
	(4,2,5),
	(4,3,1),
	(4,3,2),
	(4,3,3),
	(4,3,4),
	(4,3,5),
	(4,4,1),
	(4,4,2),
	(4,4,3),
	(4,4,4),
	(4,4,5),
	(4,5,1),
	(4,5,2),
	(4,5,3),
	(4,5,4),
	(4,5,5);
	
INSERT INTO Game
	(SuspectID, WeaponID, LocationID)
VALUES
	(5,1,1),
	(5,1,2),
	(5,1,3),
	(5,1,4),
	(5,1,5),
	(5,2,1),
	(5,2,2),
	(5,2,3),
	(5,2,4),
	(5,2,5),
	(5,3,1),
	(5,3,2),
	(5,3,3),
	(5,3,4),
	(5,3,5),
	(5,4,1),
	(5,4,2),
	(5,4,3),
	(5,4,4),
	(5,4,5),
	(5,5,1),
	(5,5,2),
	(5,5,3),
	(5,5,4),
	(5,5,5);