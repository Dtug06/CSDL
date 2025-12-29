create database databaseSS3;
use databaseSS3;
create table student (
student_id varchar(20) primary key,
full_name varchar(50) not null,
email varchar(50) unique,
date_of_birth DATE
);
alter table student
modify email varchar(50) unique;


insert into student(student_id, full_name, email, date_of_birth)
values
('002','TuandepTrai','tuan@gmail.com','2000-05-12'),
('001','Chua The Bong Toi','bongtoi@gmail.com','2001-07-20'),
('000','Hoa Hong Co Gai','hoahong@gmail.com','1999-03-15');
select * from student;
select student_id,full_name from student