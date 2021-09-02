# SQL
# Question with Queries
2. Produce the names and rating of all customers who have above average orders.

>SELECT cname, rating FROM cust WHERE cnum IN (SELECT cnum FROM orders WHERE amt > (SELECT avg(amt) FROM orders));

3. Find total amount in orders for each salesperson for whom this total is greater than the amount of the largest order in the table.

>SELECT sum(amt)
FROM orders
GROUP BY snum
HAVING sum(amt)>
  (SELECT max(amt)
   FROM orders);
4. Find all customers with order on 3rd Oct
> SELECT *
FROM orders
WHERE odate BETWEEN '03-oct-1994' AND '03-oct-1994';

