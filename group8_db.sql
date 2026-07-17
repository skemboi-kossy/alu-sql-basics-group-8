
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
-- Sandra: Classroom table
CREATE TABLE Classroom (
    classroom_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL,
    building VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    floor INT NOT NULL
);

-- Sandra: sample data
INSERT INTO Classroom (room_number, building, capacity, floor) VALUES
('A101', 'Main Block', 40, 1),
('A102', 'Main Block', 35, 1),
('B201', 'Innovation Block', 50, 2),
('B202', 'Innovation Block', 30, 2),
('C301', 'Science Block', 25, 3);

-- Sandra: update
UPDATE Classroom
SET capacity = 45
WHERE room_number = 'A101';

-- Sandra: delete (demo row)
INSERT INTO Classroom (room_number, building, capacity, floor) VALUES
('Z999', 'Temp Block', 10, 9);
DELETE FROM Classroom WHERE room_number = 'Z999';

-- Sandra: select with WHERE
SELECT * FROM Classroom
WHERE capacity >= 40;
