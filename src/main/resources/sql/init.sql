-- Create Group table with primary key
CREATE TABLE IF NOT EXISTS "Group" (
                                       group_id SERIAL PRIMARY KEY,
                                       numOfGroup VARCHAR(20) NOT NULL UNIQUE
    );

-- Create Student table with primary key and foreign key relationship
CREATE TABLE IF NOT EXISTS Student (
                                       stud_id SERIAL PRIMARY KEY,
                                       name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    group_id INT NOT NULL,  -- Now NOT NULL to enforce relationship
    CONSTRAINT fk_student_group
    FOREIGN KEY (group_id)
    REFERENCES "Group"(group_id)
    ON DELETE RESTRICT  -- Prevents deletion of referenced groups
    );

-- Create index for better join performance
CREATE INDEX idx_student_group_id ON Student(group_id);