use dsp;
/*
Write a SQL query to find the cancellation rate of 
requests with unbanned users (both client and driver must not be banned) 
each day between "2013-10-01" and "2013-10-03". Round Cancellation Rate to two decimal points.*/

CREATE TABLE trips (
    id INT,
    client_id INT,
    driver_id INT,
    city_id INT,
    status ENUM('completed', 'cancelled_by_driver', 'cancelled_by_client'),
    request_at DATE
);
 

CREATE TABLE users2 (
    users_id INT,
    banned ENUM('Yes', 'No'),
    role ENUM('client', 'driver', 'partner')
);


insert into trips values (1, 1,10,1,'completed','2013-10-01'),
(2,2,11,1,'cancelled_by_driver','2013-10-01'),
(3,3,12,6,'completed','2013-10-01'),
(4,4,13, 6,'cancelled_by_client','2013-10-01'),
(5,1,10,1,'completed','2013-10-02'),
(6,2,11,6,'completed','2013-10-02'),
(7,3,12,6,'completed','2013-10-02'),
(8,2,12,12,'completed','2013-10-03'),
(9,3,10,12,'completed','2013-10-03'),
(10,4,13,12,'cancelled_by_driver','2013-10-03');

insert into users2 values( 1,'No','client'),
(2,'Yes','client'),
(3,'No','client'),
(4,'No','client'),
(10,'No','driver'),
(11,'No','driver'),
(12,'No','driver' ),
(13,'No','driver');


with cte1 as(
SELECT 
    t.request_at AS t, sum(if (t.status != 'completed',1,0)) AS c
FROM
    trips t
        left outer JOIN
    users2 u ON t.client_id = u.users_id
WHERE
	u.banned = 'no' and t.request_at between "2013-10-01" and "2013-10-03"
GROUP BY t.request_at
) 
SELECT 
    t.request_at AS cancelation_date, round(k.c/count(*),2) AS Num
FROM
    trips t
         JOIN
    users2 u ON t.client_id = u.users_id
    join cte1 k on t.request_at=k.t
WHERE
    u.banned = 'no' and t.request_at between "2013-10-01" and "2013-10-03" 
GROUP BY t.request_at order by t.request_at;