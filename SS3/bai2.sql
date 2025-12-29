use databaseSS3;
update student
set email = 'tuan20062012@gmail.com'
where student_id = '002';
update student
set date_of_birth = '2006-04-15'
where student_id = '002';
delete from student
where student_id='001';
select * from student;
