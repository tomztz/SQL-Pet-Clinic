CREATE TABLE PETCLINIC.pet (
  Pet_id int NOT NULL,
  Breed varchar(45) DEFAULT NULL,
  Species varchar(45) DEFAULT NULL,
  Gender varchar(10) DEFAULT NULL , CHECK(Gender='male' OR Gender='female'),
  
  Birth_day int DEFAULT NULL, CHECK(Birth_day>0 AND Birth_day<=31),
  Birth_month int DEFAULT NULL, CHECK(Birth_month>0 AND Birth_month<=12),
  Birth_year int DEFAULT NULL, CHECK(Birth_year>0),
  Client_id int NOT NULL,
  PRIMARY KEY (Pet_id),
  UNIQUE KEY Pet_id_UNIQUE (Pet_id),
  KEY Client_id_idx (Client_id),
  FOREIGN KEY (Client_id) REFERENCES client (Client_id)
  ON UPDATE CASCADE
  ON DELETE CASCADE
);

INSERT INTO Pet(Pet_id,Breed,Species,Gender,Birth_day,Birth_month,Birth_year,Client_id)
VALUES
	(20000001,'Afador', 'Dog', 'Male', 01,03,2012, 0001),
    (20000002,'Chartreux', 'Cat', 'Female',26,02,2019, 0002),
    (20000003,'American Bulldog', 'Dog', 'Male',18,09,2017, 0003),
	(20000004,'Anatolian Shepherd', 'Dog', 'Male',19,11,2016, 0004),
    (20000005,'American Shorthair', 'Cat', 'Female',14,04,2020, 0005);
    
    