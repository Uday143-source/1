select employee_id, first_name, salary
from employees e1
where salary > (
    select avg(salary)
    from employees e2
    where e2.department_id = e1.department_id
);
