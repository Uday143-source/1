select e.employee_id, e.first_name, e.salary
from employees e
join (
    select department_id, avg(salary) as avg_sal
    from employees
    group by department_id
) d on e.department_id = d.department_id
where e.salary > d.avg_sal;
