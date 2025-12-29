use databaseSS3;
create table subject (
subject_id varchar(50) primary key,
subject_name varchar(100),
credit decimal check (credit>0)
);
insert into subject (subject_id,subject_name,credit)
values
('000','Vat ly luong tu',7000000),
('001','Phylosophy',1000000),
('003','',10000000);

update subject 
set credit =5000000
where subject_id ='003';

update subject
set subject_name='Nghien cuu phep thuat rucaria'
where subject_id='003';

select *from subject;