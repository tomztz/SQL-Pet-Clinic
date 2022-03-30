 CREATE TABLE PETCLINIC.serviceType (
  Appointment_id int NOT NULL,
  Service varchar(45) NOT NULL,
  PRIMARY KEY (Appointment_id,Service),
  UNIQUE KEY Appointment_id_UNIQUE (Appointment_id),
  FOREIGN KEY (Appointment_id) REFERENCES appointment (Appointment_id)
);

INSERT INTO serviceType(Appointment_id,Service)
VALUES
	(10000001,'Vaccination'),
    (10000002,'Annual check-ups'),
    (10000003,'Weight Management'),
	(10000004,'Vaccination'),
    (10000005,'Cat Boarding');