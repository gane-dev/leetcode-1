# Write your MySQL query statement below

# select employee_id, team_size
# from employee e1 left join (select team_id, count(*) as team_size from employee group by team_id) as ts
# on e1.team_id = ts.team_id;

select employee_id, count(employee_id) over(partition by team_id) as team_size
from employee;
