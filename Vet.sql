CREATE TABLE PETCLINIC.vet (
  Vet_id INT NOT NULL,
  SpecializedArea VARCHAR(45) NOT NULL,
  VetEmail VARCHAR(45) NOT NULL,
  VetNumber VARCHAR(15) NULL,
  Experiences VARCHAR(45) NULL,
  TotalTreatments INT DEFAULT 0,
  PRIMARY KEY (Vet_id),
  UNIQUE (vet_id));
  
  INSERT INTO vet(vet_id,SpecializedArea,VetEmail,VetNumber,Experiences,TotalTreatments)
VALUES
	(30000001,'Laboratory Veterinarians','vincentZ@ppclinic.ie','(01) 2826463','Senior',0),
    (30000002,'Companion Animal Veterinarians','animeeD@pptclinic.ie','(01) 43966542','Senior',0),
    (30000003,'Companion Animal Veterinarians','kenH@gmail.com','08732932101','Trainee',0),
	(30000004,'Companion Animal Veterinarians','JoeB@petclinic.ie','(01) 84586671','Senior',0),
    (30000005,'Laboratory Veterinarians','johnWall@gmail.com','08792178498','Late career',0);
    
CREATE ROLE 
PetClinic_dev, 
PetClinic_read, 
PetClinic_write;
    
GRANT ALL 
ON PetClinic.* 
TO PetClinic_dev;

GRANT SELECT 
ON PetClinic.* 
TO PetClinic_read;

GRANT INSERT, UPDATE, DELETE
ON PetClinic.* 
TO PetClinic_write;

-- developer user 
CREATE USER johnWall@localhost IDENTIFIED BY 'Secure$1782';
-- read access user
CREATE USER kenH@localhost IDENTIFIED BY 'Secure$5432';    
-- read/write users
CREATE USER animeeD@localhost IDENTIFIED BY 'Secure$9075';   
CREATE USER vincentZ@localhost IDENTIFIED BY 'Secure$3452';
CREATE USER JoeB@localhost IDENTIFIED BY 'Secure$9217';

GRANT PetClinic_dev
TO johnWall@localhost; 
GRANT PetClinic_read
TO kenH@localhost;
GRANT PetClinic_read,PetClinic_write
TO animeeD@localhost,vincentZ@localhost,JoeB@localhost;