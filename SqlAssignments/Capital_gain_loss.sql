use dsp;
/*Write an SQL query to report the Capital gain/loss for each stock.
The Capital gain/loss of a stock is the total gain or loss after 
buying and selling the stock one or many times.Return the result table in any order*/

create table Stocks(stock_name varchar(250) ,
operation enum('Sell', 'Buy'),
operation_day int,
price  int);

insert into Stocks values("Leetcode","Buy",1,1000);
insert into Stocks values("Corona Masks","Buy",2,10);
insert into Stocks values("Leetcode","Sell",5,9000);
insert into Stocks values("Handbags","Buy",17,30000),("Corona Masks","Sell",3,1010),("Corona Masks","Buy",4,1000),("Corona Masks","Sell",5,500),
("Corona Masks","Buy",6,1000),("Handbags","Sell",29,7000),("Corona Masks","Sell",10,10000);
select * from stocks;

select stock_name, 
sum(if(operation='Sell',price,0))-sum(if(operation='Buy',price,0)) as capital_gain_loss
from stocks 
group by stock_name order by capital_gain_loss desc;  