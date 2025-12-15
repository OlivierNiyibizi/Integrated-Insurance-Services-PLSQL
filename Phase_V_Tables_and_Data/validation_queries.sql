 Verify customer records
SELECT COUNT(*) FROM customer;

-- Join customers and policies
SELECT c.full_name, p.policy_name, cp.status
FROM customer c
JOIN customer_policy cp ON c.customer_id = cp.customer_id
JOIN policy p ON p.policy_id = cp.policy_id;

-- Total payments per policy
SELECT customer_policy_id, SUM(amount_paid)
FROM payment
GROUP BY customer_policy_id;

-- Active policies
SELECT * FROM customer_policy WHERE status = 'ACTIVE';
