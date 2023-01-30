#### Assignment16-01-23

##### SQL

1.Query to display Second maximum salary in each department

##### Programming

2. Python program return index of two values where sum of two diff values is equal to target.
input lis=[2,7,11,15] target = 9
output=[0,1]

#### Assignment 17-01-23

##### SQL
1. Query to display difference of latest and second latest record inserted in the table.of each event_type.
2. find The fifth highest salary of an employee table. 

##### Programming
2. Write a program to display the highest power of 2 that is divides the given number zero.
    input   : 24
    output  : 3
    explaination : pow(2,3) = 8, 24 % 8 == 0
    
##### Assignment 18-01-23
###### Sql

You are given two table 
1.team 2.matches
find the points of each team based on if win points =3,draw = 1,lose =0

###### Programming

Given an non empty array find the highets triplet product.
a[p]*a[q]*a[r] where p < q < r
ex: input : [-3,1,2,-2,5,6]
    output : 60

#### Assignment19-01-23
    ##### Sql
    1. write a SQL query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase. Return complete information about the employees.

    2. write a query to find duplicate row

    ##### Programming

    1.Write a function:

    def solution(N)

    that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.
    For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.

#### Assignment 20-1-23
         #### Sql

         1.Write an SQL query to find for each user, the join date and the number 
         of orders they made as a buyer in 2019. 
         Return the result table in any order. 
         
        ##### Programming

        2.Write a function solution that, given two integers A and B, 
        returns a string containing exactly A letters 'a' and exactly B letters 'b' 
        with no three consecutive letters being the same (in other words, 
        neither "aaa" nor "bbb" may occur in the returned string).

#### Assignment23-01-23
    ### sql

    1.SQL Assignment : 23rd Jan
    User Activity for the Past 30 Days ITable: Activity+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |
+---------------+---------+
There is no primary key for this table, it may have duplicate rows.
The activity_type column is an ENUM of type ('open_session', 'end_session', 'scroll_down', 'send_message').
The table shows the user activities for a social media website. 
Note that each session belongs to exactly one user.

Write an SQL query to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.

    ### python
    Given an integer x, return true if x is apalindrome, and false otherwise.

#### Assignment 24-01-23
    ## Sql
        1.Write a SQL query to find the cancellation rate of requests with unbanned users (both client and driver must not be banned) each day between "2013-10-01" and "2013-10-03". Round Cancellation Rate to two decimal points.
    
    ## Python

        1.Given an input string (s) and a pattern (p), implement wildcard pattern matching with support for '?' and '*' where:'?' Matches any single character.'*' Matches any sequence of characters (including the empty sequence).The matching should cover the entire input string (not partial).

#### Asssignment 25-01-23

    ## Sql
        1. Write an SQL query to report the Capital gain/loss for each stock.The Capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.Return the result table in any order.

    ## Python
       1. Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.Symbol       ValueI             1
    V             5
    X             10
    L             50
    C             100
    D             500
    M             1000For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:I can be placed before V (5) and X (10) to make 4 and 9. X can be placed before L (50) and C (100) to make 40 and 90. C can be placed before D (500) and M (1000) to make 400 and 900.Given an integer, convert it to a roman numeral.

#### Assignmnet 27-01-23

    #Programming

    Create driver.json file, which consist of driver.json{
    "app": [{
            "program": "sqlWorldCup.sql",
            "argument": ""
        },
        {
            "program": "MaxProductOfThree.py",
            "argument": ""
        }
    ]
}
    Based on the Configuration in driver.json your program will execute. Write ShellScript/Python script to read and execute the program.
