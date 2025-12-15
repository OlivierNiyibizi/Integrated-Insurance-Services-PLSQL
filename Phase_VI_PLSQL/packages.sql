CREATE OR REPLACE PACKAGE insurance_pkg AS
    PROCEDURE register_customer;
    FUNCTION calculate_premium RETURN NUMBER;
END insurance_pkg;
/
