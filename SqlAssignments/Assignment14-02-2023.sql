use dsp;
/* 
A pizza company is taking orders from customers, and each pizza ordered is added to their database as a separate order. Each order has an associated status, "CREATED or SUBMITTED or DELIVERED". An order's Final_Status is calculated based on status as follows: 
1. When all orders for a customer have a status of DELIVERED, that customer's order has a Final_Status of COMPLETED.
2. If a customer has some orders that are not DELIVERED and some orders that are DELIVERED, the Final_Status is IN PROGRESS.
3. If at least one of a customer's orders is SUBMITTED and none is DELIVERED, the Final_Status is AWAITING PROGRESS.Otherwise, 
4. the Final_Status is AWAITING SUBMISSION. 
Write a query to report the customer_name and Final_Status of each customer's order. Order the results by customer name.
*/

/*====================================================================================*/
create table customer_order (Customer_name varchar(50),order_id varchar(10),status varchar(50));
insert into customer_order values('John','J1','DELIVERED'),
('John','J2','DELIVERED'),
('David','D1','DELIVERED'),
('Smith','S1','SUBMITTED'),
('KRISH','K1','CREATED');
INSERT INTO customer_order values('David','D1','CREATED');

with info (customer_name,del,cre,sub) as
(
			select Customer_name, 
			 sum(status='delivered'),
			 sum(status='created'),
             sum(status='submitted') 
             from customer_order 
             group by Customer_name
)
             select customer_name,
             case
             when del >0 and cre=0 and sub=0 then 'Completed'
             when del>0 then 'In Progress'
             when del=0 and sub > 0 then 'Awaiting Progress'
             else 'Awaiting Submission'
             end as Final_status 
             from info order by customer_name;
             
             
             
			