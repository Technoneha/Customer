---create customer table

create table customer (
      customer_id int primary key,
	  customer_name varchar(50),
	  city varchar(50)
);


---view table recors
select * from customer

---insert data into the customer table

insert into customer values
  (1,'Neha','Mumbai'),
  (2,'Saurah','Delhi'),
  (3,'Ana','Pune'),
  (4,'Garry','Kolkata'),
  (5,'Shipu','Jaipur');


--create order table & use foreign key for combing data 
Create table orders(
   order_id int primary key,
   customer_id int,
   products varchar(50),
   foreign key(customer_id)References customer(customer_id)
);

---insert into order table 
   insert into orders values
   (101,1,'Mobile'),
   (102,2,'Laptop'),
   (103,1,'Headphone'),
   (104,5,'Tablet');


---view table records
  select * from orders

---Inner join(Only return matching records)

  select c.customer_id,c.customer_name,o.order_id,o.products
  from customer c
  inner join orders o
  on c.customer_id=o.customer_id;
 

--left join(match with left table show all the record  even if on right record is zero)

   SELECT c.customer_id, c.customer_name, o.order_id, o.products
   FROM Customer c
   LEFT JOIN Orders o
   ON c.customer_id = o.customer_id;

---Right join (all recordes  from right table (customer)even if does't exist )
   SELECT c.customer_id, c.customer_name, o.order_id, o.products
   FROM Customer c
   RIGHT JOIN Orders o
   ON c.customer_id = o.customer_id;

 --- full join 

SELECT c.customer_id, c.customer_name, o.order_id, o.products
FROM Customer c
FULL JOIN Orders o
ON c.customer_id = o.customer_id;

