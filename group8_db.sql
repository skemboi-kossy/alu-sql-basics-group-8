
CREATE TABLE Extra_Curricular_Activities (
    activity_id        INT NOT NULL AUTO_INCREMENT,
    activity_name      VARCHAR(100) NOT NULL,
    activity_type      VARCHAR(50),
    meeting_day        VARCHAR(20),
    faculty_advisor_id INT NOT NULL,
    PRIMARY KEY (activity_id),
    FOREIGN KEY (faculty_advisor_id) REFERENCES Faculty(faculty_id)
);

INSERT INTO Extra_Curricular_Activities (activity_name, activity_type, meeting_day, faculty_advisor_id) VALUES
('Debate Club',        'Academic', 'Monday',    1),
('Football Team',      'Sports',   'Wednesday', 2),
('Coding Club',        'Academic', 'Thursday',  3),
('Traditional Dance',  'Cultural', 'Friday',    4),
('Environmental Club', 'Service',  'Tuesday',   5),
('Chess Club',         'Academic', 'Saturday',  1);

-- Digne: UPDATE
UPDATE Extra_Curricular_Activities SET meeting_day = 'Sunday' WHERE activity_id = 6;

-- Digne: DELETE
DELETE FROM Extra_Curricular_Activities WHERE activity_id = 6;

-- Digne: SELECT with WHERE
SELECT activity_name, meeting_day FROM Extra_Curricular_Activities WHERE activity_type = 'Academic';
