-- Show first name, last name, and the full province name of each patient.
-- Example: 'Ontario' instead of 'ON'

select p.first_name , p.last_name , c.province_name from patients as p
join province_names as c
on p.province_id = c.province_id 


-- Show how many patients have a birth_date with 2010 as the birth year.

select count(birth_date) from patients
where year(birth_date) = (2010)


-- Show all the columns from admissions where the patient was admitted and discharged on the same day.

select * from admissions where admission_date = discharge_date 


-- Show the patient id and the total number of admissions for patient_id 579.

select * from admissions where admission_date = discharge_date 


-- Write a query to find list of patients first_name, last_name, and allergies from city 'Hamilton' where allergies is not null

select first_name , last_name , allergies from patients
where city = 'Hamilton' and allergies is not null


-- Based on cities where our patient lives in, write a query to display the list of unique city starting with a vowel (a, e, i, o, u). Show the result order in ascending by city.

select distinct city from patients
where city like 'a%' OR city like 'e%' OR city like 'i%' OR city like 'o%' OR city like 'U%'
order by city


