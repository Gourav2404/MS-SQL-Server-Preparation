select distinct year(birth_date) from patients
order by birth_date asc

select first_name from patients
group by first_name
having count(first_name) = 1

select patient_id , first_name from patients
where first_name like 's____%s


select p.patient_id , p.first_name , p.last_name from patients as p
join admissions as a 
on p.patient_id = a.patient_id
where a.diagnosis = 'Dementia'

select first_name from patients order by len(first_name),first_name

select (select count(*) from patients where gender = 'M') AS male_count , (select count(*) from patients where gender = 'F') as female_count
from patients limit 1