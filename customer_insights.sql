-- 1. Total number of customers
SELECT COUNT(*) AS total_customers FROM customer;

-- 2. Count of customers by city
SELECT city.city, COUNT(*) AS customer_count
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
GROUP BY city.city
ORDER BY customer_count DESC;

-- 3. Active vs inactive customers
SELECT active, COUNT(*) AS counts
FROM customer
GROUP BY active;
