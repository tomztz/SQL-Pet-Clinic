CREATE TABLE PETCLINIC.books (
  Appointment_id int NOT NULL,
  Client_id int NOT NULL,
  PRIMARY KEY (Appointment_id,Client_id),
  UNIQUE KEY Appointment_id_UNIQUE (Appointment_id),
  UNIQUE KEY Client_id_UNIQUE (Client_id),
  FOREIGN KEY (Appointment_id) REFERENCES appointment (Appointment_id),
  FOREIGN KEY (Client_id) REFERENCES client (Client_id)
);

INSERT INTO books(Appointment_id,Client_id)
VALUES
	(10000001,0001),
    (10000002,0002),
    (10000003,0003),
	(10000004,0004),
    (10000005,0005);