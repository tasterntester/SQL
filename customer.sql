SELECT cname,
       rating
FROM cust
WHERE cnum IN
    (SELECT cnum
     FROM orders
     WHERE amt >
         (SELECT avg(amt)
          FROM orders));              