CREATE OR REPLACE FUNCTION calculate_premium (
    p_policy_id NUMBER
) RETURN NUMBER IS
    v_premium NUMBER;
BEGIN
    SELECT premium_amount INTO v_premium
    FROM policy
    WHERE policy_id = p_policy_id;
    RETURN v_premium;
END;
/
