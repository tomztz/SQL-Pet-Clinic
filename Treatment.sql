 CREATE TABLE PETCLINIC.treatment (
  Treatment_id INT NOT NULL,
  DateAndTime DATETIME NULL,
  Price DECIMAL(10,2) NULL, CHECK(Price>0),
  TreatmentType VARCHAR(45) NULL,
  Vet_id INT NOT NULL,
  Pet_id INT NOT NULL,
  Room_id INT NOT NULL,
  PRIMARY KEY (Treatment_id),
  UNIQUE (Treatment_id),
  FOREIGN KEY (Vet_id)
  REFERENCES petclinic.vet (Vet_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  FOREIGN KEY (Pet_id)
  REFERENCES petclinic.pet (Pet_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  FOREIGN KEY (Room_id)
  REFERENCES petclinic.room (Room_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE);
  
USE PETCLINIC;
CREATE TRIGGER calculate_total_treatments AFTER INSERT ON treatment
FOR EACH ROW
  UPDATE Vet
  SET totalTreatments = totalTreatments+1
  WHERE vet_id = NEW.vet_id;
  
      INSERT INTO treatment(Treatment_id,DateAndTime,Price,TreatmentType,Vet_id,Pet_id,Room_id)
VALUES
	(400000001,'2022-01-01 15:10:10',200,'Vaccination',30000001,20000001,4013),
    (400000002,'2022-01-01 15:30:00',50,'Annual check-ups',30000002,20000002,2087),
    (400000003,'2022-01-01 16:10:00',100,'Weight Management',30000003,20000003,3003),
	(400000004,'2022-01-02 10:10:00',250,'Vaccination',30000001,20000004,1021),
    (400000005,'2022-01-02 11:10:00',100,'Cat Boarding',30000005,20000005,0015);
    
    
CREATE VIEW Payments AS (

  SELECT i.price,p.Pet_id FROM
    treatment i
  LEFT JOIN 
    Pet p 
  ON
    i.pet_id=p.Pet_id

  ORDER BY
  i.price DESC
 
);