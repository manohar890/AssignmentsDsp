-- Query to display second max salary of each department.

select f.emp,f.deptno,f.salary from
(
select e.emp,e.deptno,e.salary,
dense_rank() over (partition by e.deptno order by e.salary desc) as ranks from employ e
)
where ranks =2;
