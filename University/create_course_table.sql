-- turn on foreign keys
PRAGMA foreign_keys = ON;

CREATE TABLE course (
    course_id INTEGER PRIMARY KEY,
    department TEXT NOT NULL,
    course_number INTEGER NOT NULL,
    course_name TEXT NOT NULL,
    employee_id INTEGER,
    FOREIGN KEY (employee_id) REFERENCES professor(employee_id)
);

