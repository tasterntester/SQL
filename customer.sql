/*** SQL Exercises - SUBQUERIES on Sales Database ***/

Table: SALESPEOPLE

SNUM          SNAME        city        comm
-----------  ----------  ----------  ----------
1001	       Peel	    London	   .12
1002          Serres	    San Jose	   .13
1004	       Motika	    London	   .11
1007	       Rafkin	    Barcelona	   .15
1003	       Axelrod    New York	   .1



Table: CUST

CNUM	 CNAME	     CITY    RATING	   SNUM
-----  ---------  ------- ---------  ----------
2001	Hoffman     London	100	   1001
2002	Giovanne    Rome	200	   1003
2003	Liu	     San JosE 300	   1002
2004	Grass	     Brelin	100	   1002
2006	Clemens     London	300	   1007
2007	Pereia	     Rome	100	   1004


Table: ORDERS

ONUM	AMT	       ODATE	        CNUM         SNUM
----- -------        ----------    --------  ----------
3001	18.69	       03-OCT-94	2008	       1007
3003	767.19	       03-OCT-94	2001	       1001
3002	1900.10	03-OCT-94	2007	       1004
3005	5160.45	03-OCT-94	2003	       1002
3006	1098.16	04-OCT-94	2008	       1007
3009	1713.23	04-OCT-94	2002	       1003
3007	75.75	       05-OCT-94	2006	       1002
3008	4723.00	05-OCT-94	2006	       1001
3010	1309.95	06-OCT-94	2004	       1002
3011	9891.88	06-OCT-94	2006	       1001



/*Obtain all orders for the customer named Cisnerous. (Assume you don't know his customer no. (cnum)).*/
/*Produce the names and rating of all customers who have above average orders.*/

SELECT cname, 
rating FROM 
       cust WHERE 
       cnum IN (SELECT cnum 
               FROM orders 
                 WHERE amt > 
                (SELECT avg(amt) 
                    FROM orders));
                    
                    
/*Find total amount in orders for each salesperson for whom this total is greater than the amount of the largest order in the table.*/

SELECT sum(amt)
       FROM orders
          GROUP BY snum
              HAVING sum(amt)>
               (SELECT max(amt)
                   FROM orders);
   
   
/*Find all customers with order on 3rd Oct.*/

SELECT *
       FROM orders
       WHERE odate BETWEEN '03-oct-1994' AND '03-oct-1994';


/*Find names and numbers of all salesperson who have more than one customer.*/
/*Check if the correct salesperson was credited with each sale.*/
/*Find all orders with above average amounts for their customers.*/
/*Find the sums of the amounts from order table grouped by date, eliminating all those dates where the sum was not at least 2000 above the maximum amount.*/
/*Find names and numbers of all customers with ratings equal to the maximum for their city.*/
/*Find all salespeople who have customers in their cities who they don't service. ( Both way using Join and Correlated subquery.)*/
/*Extract cnum,cname and city from customer table if and only if one or more of the customers in the table are located in San Jose.*/
/*Find salespeople no. who have multiple customers.*/
/*Find salespeople number, name and city who have multiple customers.*/
/*Find salespeople who serve only one customer.*/
/*Extract rows of all salespeople with more than one current order.*/
/*Find all salespeople who have customers with a rating of 300. (use EXISTS)*/
/*Find all salespeople who have customers with a rating of 300. (use Join).*/
/*Select all salespeople with customers located in their cities who are not assigned to them. (use EXISTS).*/
/*Extract from customers table every customer assigned the a salesperson who currently has at least one other customer ( besides the customer being selected) with orders in order table.*/
/*Find salespeople with customers located in their cities ( using both ANY and IN).*/
/*Find all salespeople for whom there are customers that follow them in alphabetical order. (Using ANY and EXISTS)*/
/*Select customers who have a greater rating than any customer in rome.*/
/*Select all orders that had amounts that were greater that atleast one of the orders from Oct 6th.*/
/*Find all orders with amounts smaller than any amount for a customer in San Jose. (Both using ANY and without ANY)*/
/*Select those customers whose ratings are higher than every customer in Paris. ( Using both ALL and NOT EXISTS).*/
/*Select all customers whose ratings are equal to or greater than ANY of the Seeres.*/
/*Find all salespeople who have no customers located in their city. ( Both using ANY and ALL)*/
/*Find all orders for amounts greater than any for the customers in London.*/
/*Find all salespeople and customers located in london.*/
/*For every salesperson, dates on which highest and lowest orders were brought.*/
/*List all of the salespeople and indicate those who don't have customers in their cities as well as those who do have.*/
/*Append strings to the selected fields, indicating weather or not a given salesperson was matched to a customer in his city.*/
/*Create a union of two queries that shows the names, cities and ratings of all customers. Those with a rating of 200 or greater will also have the words 'High Rating', while the others will have the words 'Low Rating'.*/
/*Write command that produces the name and number of each salesperson and each customer with more than one current order. Put the result in alphabetical order.*/
/*Form a union of three queries. Have the first select the snums of all salespeople in San Jose, then second the cnums of all customers in San Jose and the third the onums of all orders on Oct. 3. Retain duplicates between the last two queries, but eliminates and redundancies between either of them and the first.*/
/*Produce all the salesperson in London who had at least one customer there.*/
/*Produce all the salesperson in London who did not have customers there.*/
/*We want to see salespeople matched to their customers without excluding those salesperson who were not currently assigned to any customers. (User OUTER join and UNION)*/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/

        
