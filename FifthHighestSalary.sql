-- fifth highest salary


#method 1
SELECT  salary 
FROM Employ e1
WHERE 4 = (SELECT COUNT(DISTINCT salary) FROM Employ e2
WHERE e2.salary > e1.salary);


#method 2

select f.salary 
from (
select salary ,
dense_rank() over (order by salary desc) as ranks
 from employ
 ) as f
where ranks=5;