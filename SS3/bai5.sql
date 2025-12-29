use databaseSS3;
CREATE TABLE Score (
    student_id INT,
    subject_id INT,
    mid_score DECIMAL(4,2),
    final_score DECIMAL(4,2),

    PRIMARY KEY (student_id, subject_id),

    CONSTRAINT fk_score_sv
        FOREIGN KEY (student_id)
        REFERENCES SinhVien(student_id),

    CONSTRAINT fk_score_mh
        FOREIGN KEY (subject_id)
        REFERENCES MonHoc(subject_id),

    CONSTRAINT chk_mid_score
        CHECK (mid_score BETWEEN 0 AND 10),

    CONSTRAINT chk_final_score
        CHECK (final_score BETWEEN 0 AND 10)
);


