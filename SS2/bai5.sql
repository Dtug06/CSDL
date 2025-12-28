USE bai03_enrollment;
CREATE TABLE Score (
    student_id INT,
    subject_id INT,
    process_score DECIMAL(4,2),
    final_score DECIMAL(4,2),
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id)
        REFERENCES Student(student_id),
    FOREIGN KEY (subject_id)
        REFERENCES Subject(subject_id),
    CHECK (process_score BETWEEN 0 AND 10),
    CHECK (final_score BETWEEN 0 AND 10)
);
