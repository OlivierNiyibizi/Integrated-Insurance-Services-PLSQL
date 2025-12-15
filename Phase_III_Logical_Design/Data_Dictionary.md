# Data Dictionary – Integrated Insurance Services

## CUSTOMER
- customer_id (NUMBER, PK)
- full_name (VARCHAR2)
- phone (VARCHAR2)
- email (VARCHAR2)
- registration_date (DATE)

## POLICY
- policy_id (NUMBER, PK)
- policy_name (VARCHAR2)
- policy_type (VARCHAR2)
- premium_amount (NUMBER)
- coverage_amount (NUMBER)
- duration_months (NUMBER)

## CUSTOMER_POLICY
- customer_policy_id (NUMBER, PK)
- customer_id (NUMBER, FK)
- policy_id (NUMBER, FK)
- start_date (DATE)
- end_date (DATE)
- status (VARCHAR2)

## PAYMENT
- payment_id (NUMBER, PK)
- customer_policy_id (NUMBER, FK)
- payment_date (DATE)
- amount_paid (NUMBER)
- payment_method (VARCHAR2)

## CLAIM
- claim_id (NUMBER, PK)
- customer_policy_id (NUMBER, FK)
- claim_date (DATE)
- claim_description (VARCHAR2)
- claim_status (VARCHAR2)
- approved_amount (NUMBER)
