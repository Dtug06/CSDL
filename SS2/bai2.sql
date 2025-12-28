
CREATE DATABASE IF NOT EXISTS bai02_student_subject;
USE bai02_student_subject;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    CHECK (credits > 0)
);
