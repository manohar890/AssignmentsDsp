use dsp;

drop table if exists users;

# Table users
create table users(user_id int,join_date date,favorite_brand varchar(255), primary key (user_id));

insert into users values(1,"2018-01-01","Lenovo"),(2,"2018-02-09","Samsung"),(3,"2018-01-19","LG"),(4,"2018-05-21","HP");

# table Orders
create table orders (order_id int,order_date date,
item_id int,
buyer_id int ,seller_id int,FOREIGN KEY(ITEM_ID) REFERENCES ITEMS(ITEM_ID),foreign key
(BUYER_ID) references USERS(USER_ID),
 Foreign key(SELLER_ID) references USERS(USER_ID));

insert into orders values(1,"2019-08-01",4,1,2),(2,"2018-08-02",2,1,3),
(3,"2019-08-03",3,2, 3),
(4,"018-08-04",1,4,2),
(5,"2018-08-04",1,3,4),
(6,"2019-08-05",2,2,4); 

# Table orders
create table items(item_id int,item_brand varchar(255), primary key(item_id));   
insert into items values(1,"Samsung"),(2,"Lenovo"),( 3,"LG"),(4,"HP");


-- Write an SQL query to find for each user, the join date and the number of orders 
-- they made as a buyer in 2019.

-- Return the result table in any order.


SELECT 
    u.user_id,
    u.join_date,
    SUM(IF(YEAR(o.order_date) = '2019', 1, 0)) AS 'orderson(2019)'
FROM
    users u
        JOIN
    orders o ON u.user_id = o.buyer_id
GROUP BY o.buyer_id;

select * from orders;