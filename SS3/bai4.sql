use databaseSS3;

create table Enrollment (
    student_id varchar(20),
    subject_id varchar(50),
    enroll_date date,
    constraint pk_enrollment primary key (student_id, subject_id),
    constraint fk_enrollment_student foreign key (student_id) references student(student_id),
    constraint fk_enrollment_subject foreign key (subject_id) references subject(subject_id)
);
insert into Enrollment(student_id, subject_id, enroll_date)
values
('000','000','2025-12-20'),
('000','001','2025-12-21'),
('002','000','2025-12-22'),
('002','003','2025-12-23');
select * from Enrollment;
select * 
from Enrollment
where student_id = '001';
