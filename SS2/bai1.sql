
CREATE DATABASE IF NOT EXISTS bai01_class_student;
USE bai01_class_student;
-- 3. Tạo bảng Class
CREATE TABLE Class (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    school_year VARCHAR(9) NOT NULL
);
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id)
        REFERENCES Class(class_id)
);
