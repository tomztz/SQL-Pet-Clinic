CREATE TABLE PETCLINIC.appointment (
  Appointment_id INT NOT NULL,
  TimeAndDate DATETIME NOT NULL,
  address VARCHAR(45) NULL,
  PRIMARY KEY (Appointment_id),
  UNIQUE (Appointment_id));
  
  
  INSERT INTO appointment(Appointment_id,TimeAndDate,address)
VALUES
	(10000001,'2022-01-01 15:10:10', '23 st stephens road'),
    (10000002,'2022-01-01 15:30:00', '12 sandyford BD'),
    (10000003,'2022-01-01 16:10:00', '29 hermitage road'),
	(10000004,'2022-01-02 10:10:00', '12 sandyford BD'),
    (10000005,'2022-01-02 11:10:00', '23 st stephens road');

DELIMITER ;;
CREATE FUNCTION get_appointments_by_date ( somedate DATE )
RETURNS INT
READS SQL DATA
DETERMINISTIC
BEGIN

   DECLARE appointments INT;
   DECLARE n INT DEFAULT 0;
   SET appointments = 0;

   SELECT Count(*)
   FROM appointment where TimeAndDate = Date into n;

   WHILE appointments<n DO 
   SET  appointments= appointments + 1;
   END WHILE;
   RETURN appointments;

END; ;;
DELIMITER ;