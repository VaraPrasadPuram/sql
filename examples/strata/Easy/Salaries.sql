select abs(m.salary - e.salary) as absolute_difference from
(select max(salary) as salary from db_employee
join db_dept on db_employee.department_id = db_dept.id
where department like '%marketing%') as m,
(select max(salary) as salary from db_employee
join db_dept on db_employee.department_id = db_dept.id
where department like '%engineering%') as e