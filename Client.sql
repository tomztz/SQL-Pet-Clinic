CREATE SCHEMA PETCLINIC ;
USE PETCLINIC;
CREATE TABLE PETCLINIC.CLIENT (
  Client_id INT NOT NULL,
  FullName VARCHAR(45) NOT NULL,
  ClientNumber VARCHAR(15) NOT NULL,
  ClientEmail VARCHAR(45) NOT NULL,
  Insurance VARCHAR(45) NULL,
  PRIMARY KEY (Client_id),
  UNIQUE (Client_id));
  
ALTER TABLE Client
ADD description VARCHAR(300);

describe petclinic.Client;
INSERT INTO Client(Client_id,FullName,ClientNumber,ClientEmail,Insurance)
VALUES
	(0001,'John Smith', 0872109254, 'JohnSmith@gmail.com', 'Essential Cover'),
    (0002,'Tom Andrews', 0879293293, 'TomAndrews@gmail.com', 'Premier'),
    (0003,'Eric Wang', 0879200091, 'Eric Wang@outlook.com', 'Premier+'),
	(0004,'Alice Smith', 0873967543, 'AliceSmith@yahoo.com', 'Essential Cover'),
    (0005,'Reachell May', 08792018273, 'ReachellMay@gmail.com', 'Premier');
    


    
