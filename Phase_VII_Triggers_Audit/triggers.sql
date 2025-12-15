CREATE OR REPLACE TRIGGER restrict_weekday_insert
BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
    IF TO_CHAR(SYSDATE,'DY') NOT IN ('SAT','SUN') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insert denied: Weekday restriction');
    END IF;
END;
/
