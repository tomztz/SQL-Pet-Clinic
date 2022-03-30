CREATE TABLE PETCLINIC.sends (
  Appointment_id INT NOT NULL,
  Vet_id INT NOT NULL,
  PRIMARY KEY (Appointment_id, Vet_id),
  UNIQUE (vet_id),
  UNIQUE (Appointment_id),
  FOREIGN KEY (Appointment_id)
  REFERENCES petclinic.appointment (Appointment_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  FOREIGN KEY (Vet_id)
  REFERENCES petclinic.vet (Vet_id)
  ON DELETE CASCADE
  ON UPDATE CASCADE);
    
    INSERT INTO sends(Appointment_id,Vet_id)
VALUES
    	(10000001,30000001),
    (10000002,30000002),
    (10000003,30000003),
	(10000004,30000004),
    (10000005,30000005);