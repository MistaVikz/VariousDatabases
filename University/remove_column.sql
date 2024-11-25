-- Run all commands successfully or roll back
BEGIN TRANSACTION;
    ALTER TABLE student RENAME TO student_temp;
    CREATE TABLE student(
        student_id INTEGER PRIMARY KEY,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        gpa REAL NOT NULL,
        email TEXT NOT NULL UNIQUE
    );
    INSERT INTO student
        SELECT student_id,first_name,last_name,gpa,email
        FROM student_temp;
    DROP TABLE student_temp;
COMMIT;