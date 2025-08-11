# Customer
SQL queries using all join types

🛒 Customer & Orders SQL Joins
This project demonstrates SQL JOIN operations (INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN) using a simple example of customers and their orders.

1. Customers Table

Column	Type	Description
customer_id	INT (PK)	Unique customer ID
customer_name	VARCHAR(50)	Customer's name
city	VARCHAR(50)	Customer's city

| Column       | Type        | Description        |
| ------------ | ----------- | ------------------ |
| order\_id    | INT (PK)    | Unique order ID    |
| customer\_id | INT (FK)    | Linked customer ID |
| product      | VARCHAR(50) | Product ordered    |


🛠 SQL Joins Demonstrated
1 INNER JOIN – Customers who have placed at least one order.

2 LEFT JOIN – All customers, even if they haven't placed any order.

3 RIGHT JOIN – All orders, even if no matching customer exists.

4 FULL JOIN – All customers and all orders, matched where possible.


💡 Purpose
This project helps  understand SQL joins using a real-world example of customers and orders.

