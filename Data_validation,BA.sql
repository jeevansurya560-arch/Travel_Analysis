SHOW TABLES;
SELECT COUNT(*) FROM dim_customers;
SELECT COUNT(*) FROM fact_orders;

/*
In This We are about to check whether the duplicates are still in DATA  */
SELECT order_id,count(*) AS cnt  FROM fact_orders
GROUP BY order_id
HAVING COUNT(*)>1;
/*Their is no duplicate orders*/


/*
In This We are about to check whether the duplicate customers are still in DATA 
*/

SELECT
    cust_id,
    COUNT(*) AS cnt
FROM dim_customers
GROUP BY cust_id
HAVING COUNT(*) > 1;
/*Their is no duplicate Customers*/

/*In This We are about to check whether the Orphaned customers IDs are still in DATA */

SELECT *
FROM fact_orders f
LEFT JOIN dim_customers c
ON f.customer_id = c.cust_id
WHERE c.cust_id IS NULL;
/*their are few records about Orphaned Customers*/


/*IN This we are finding does Negative Revenue Exist in the data*/
SELECT *
FROM fact_orders
WHERE booking_amount < 0;
/*their is a record of negative revenue generated*/


/*finding the Invalid Completed Orders*/
SELECT *
FROM fact_orders
WHERE booking_status = 'Completed'
AND booking_amount <= 0;
/*their are few records about that*/

/*finding Zero Quantity Orders*/
SELECT *
FROM fact_orders
WHERE quantity = 0;


/*Business_Analysis*/


#Revenue by Destination

SELECT
    destination,
    SUM(booking_amount) AS revenue
FROM fact_orders
GROUP BY destination
ORDER BY revenue DESC;


#Top 10 Customers

SELECT
    c.customer_name,
    SUM(o.booking_amount) AS total_spent
FROM fact_orders o
JOIN dim_customers c
ON o.customer_id = c.cust_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 10;


#Revenue by Loyalty Tier

SELECT
    c.loyalty_tier,
    SUM(o.booking_amount) AS revenue
FROM fact_orders o
JOIN dim_customers c
ON o.customer_id = c.cust_id
GROUP BY c.loyalty_tier;


#WINDOWS FUNCTIONS,RANKINGS
WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(booking_amount) AS total_spent
    FROM fact_orders
    GROUP BY customer_id
)
SELECT *
FROM customer_spending;

CREATE VIEW customer_revenue AS
SELECT
    c.customer_name,
    SUM(o.booking_amount) AS revenue
FROM fact_orders o
JOIN dim_customers c
ON o.customer_id = c.cust_id
GROUP BY c.customer_name;