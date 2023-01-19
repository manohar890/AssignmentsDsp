CREATE TABLE `emp` (
  `EMPNO` int NOT NULL,
  `ENAME` varchar(255) DEFAULT NULL,
  `JOB` varchar(255) DEFAULT NULL,
  `MGR` int DEFAULT NULL,
  `HIREDATE` date DEFAULT NULL,
  `SAL` float(7,2) DEFAULT NULL,
  `COMM` float(7,2) DEFAULT NULL,
  `DEPTNO` float DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL
) 

/*
write a SQL query to identify those employees whose salaries exceed 3000 
after receiving a 25% salary increase. 
Return complete information about the employees.
*/
# Query 1
select * from emp where (sal*0.25)+sal >=3000;

# Query to Display exact two rows of identical/duplicate 
select e.* from emp e group by e.empno,e.ename,e.job,e.mgr,e.hiredate,
e.sal,
e.comm,
e.deptno,
e.dob
having count(*) > 1;
