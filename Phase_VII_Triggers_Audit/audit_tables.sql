CREATE TABLE audit_log (
    audit_id NUMBER PRIMARY KEY,
    username VARCHAR2(50),
    action_date DATE,
    action VARCHAR2(100),
    status VARCHAR2(20),
    message VARCHAR2(200)
);
