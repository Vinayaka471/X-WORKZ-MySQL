CREATE TABLE Engineers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    experience INT,
    salary DECIMAL(10,2)
);

INSERT INTO Engineers (name, department, experience, salary) VALUES
('Alice Smith', 'Software', 5, 80000),
('Bob Johnson', 'Mechanical', 7, 75000),
('Charlie Brown', 'Electrical', 3, 70000),
('David Wilson', 'Civil', 8, 85000),
('Emma Davis', 'Software', 4, 78000),
('Frank Miller', 'Mechanical', 6, 76000),
('Grace Lee', 'Electrical', 2, 72000),
('Henry King', 'Civil', 9, 89000),
('Isabella Scott', 'Software', 5, 81000),
('Jack White', 'Mechanical', 10, 92000),
('Katie Adams', 'Electrical', 3, 71000),
('Leo Carter', 'Civil', 7, 88000),
('Maria Roberts', 'Software', 6, 83000),
('Nathan Green', 'Mechanical', 5, 74000),
('Olivia Hall', 'Electrical', 4, 75000),
('Paul Walker', 'Civil', 11, 95000),
('Quinn Lewis', 'Software', 3, 77000),
('Rebecca Young', 'Mechanical', 9, 91000),
('Samuel Baker', 'Electrical', 2, 73000),
('Tina Moore', 'Civil', 5, 86000),
('Umar Clark', 'Software', 6, 82000),
('Vivian Lopez', 'Mechanical', 4, 78000),
('William Gonzalez', 'Electrical', 7, 74000),
('Xavier Rivera', 'Civil', 12, 97000),
('Yasmine Turner', 'Software', 8, 84000),
('Zane Mitchell', 'Mechanical', 5, 76000),
('Amber Perez', 'Electrical', 3, 71000),
('Brian Edwards', 'Civil', 6, 89000),
('Catherine Brooks', 'Software', 9, 88000);

UPDATE Engineers
SET salary = 85000
WHERE name = 'Alice Smith';

DELETE FROM Engineers
WHERE name = 'Charlie Brown';

RENAME TABLE Engineers TO TechEngineers;