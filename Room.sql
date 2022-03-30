CREATE TABLE PETCLINIC.room (
  Room_id INT NOT NULL,
  RoomType VARCHAR(45) NULL,
  RoomFloor INT NOT NULL,
  PRIMARY KEY (Room_id),
  UNIQUE (Room_id));
  
    INSERT INTO room(Room_id,RoomType,RoomFloor)
VALUES
	(4013,' Patient Treatment Area',4),
    (2087,'Consulting Room',2),
    (3003,'Consulting Room',3),
	(1021,'Patient Treatment Area',1),
    (0015,' Patient Treatment Area',0);