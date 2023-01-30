Show unique birth years from patients and order them by ascending.
mediumcompleted

Show unique first names from the patients table which only occurs once in the list.
For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.
mediumcompleted

Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
mediumcompleted

Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
Primary diagnosis is stored in the admissions table.
mediumcompleted

Display every patient's first_name.
Order the list by the length of each name and then by alphbetically
mediumcompleted

Show the total amount of male patients and the total amount of female patients in the patients table.
Display the two results in the same row.


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