select * from emp

select * from department


-- 1) get all data of name, mob , address ,post

select name, e.mob as "e_mob", e.address as "e_address", d.post as "d_post" from emp as e
inner join department as d
on d.department_id = e.emp_id
group by name,mob,address,post

-- 2) get all data of name, salary, age  of avg of emp

select d.name,  avg(d.salary) , avg(e.age) from emp as e
inner join department as d
on d.department_id = e.emp_id
group by d.name

-- 3) get data of 2007 to 2009 with  name and emp 

select d.name,e.joining_date from department as d
inner join emp as e
on d.department_id = e.emp_id
where e.joining_date  between  '2007-07-09'and '2009-09-14' 
group by d.name,e.joining_date

-- 4) give me the data of emp_name,department and sum of salary 
	
select e.emp_name,e.department ,sum(e.salary) from emp as e
where e.emp_name  is not null and e.department  is not null
group by e.emp_name, e.department 

	

