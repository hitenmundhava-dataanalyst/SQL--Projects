-- ------------------------------Student Records Database-----------------------------------------
#--  create and use the database school
create database school;
use school;

#--  create a table students 
create table students(Name varchar(50),
Roll_number int,
department varchar(50),
marks int);

#--  insert data into students
insert into students (Name,Roll_number,department,marks) values ("hiten",50,"IT",85);
INSERT INTO students (Name, Roll_number, department, marks) VALUES
("Aarav", 1, "IT", 75),
("Vivaan", 2, "Computer Science", 82),
("Aditya", 3, "Mechanical", 68),
("Arjun", 4, "Civil", 71),
("Sai", 5, "Electrical", 79),
("Krishna", 6, "IT", 88),
("Ishaan", 7, "Computer Science", 92),
("Kabir", 8, "Mechanical", 65),
("Rohan", 9, "Civil", 73),
("Aryan", 10, "Electrical", 80),
("Ananya", 11, "IT", 77),
("Diya", 12, "Computer Science", 85),
("Ira", 13, "Mechanical", 66),
("Meera", 14, "Civil", 74),
("Aditi", 15, "Electrical", 83),
("Sanya", 16, "IT", 90),
("Riya", 17, "Computer Science", 95),
("Tara", 18, "Mechanical", 62),
("Nisha", 19, "Civil", 70),
("Simran", 20, "Electrical", 81),
("Manish", 21, "IT", 79),
("Kunal", 22, "Computer Science", 87),
("Rahul", 23, "Mechanical", 64),
("Vikram", 24, "Civil", 72),
("Suresh", 25, "Electrical", 85),
("Mahesh", 26, "IT", 89),
("Amit", 27, "Computer Science", 91),
("Vivek", 28, "Mechanical", 60),
("Siddharth", 29, "Civil", 76),
("Rajat", 30, "Electrical", 84),
("Deepak", 31, "IT", 78),
("Pooja", 32, "Computer Science", 86),
("Neha", 33, "Mechanical", 63),
("Swati", 34, "Civil", 75),
("Kavita", 35, "Electrical", 82),
("Priya", 36, "IT", 88),
("Shreya", 37, "Computer Science", 94),
("Muskan", 38, "Mechanical", 67),
("Ayesha", 39, "Civil", 71),
("Sonal", 40, "Electrical", 83),
("Komal", 41, "IT", 80),
("Payal", 42, "Computer Science", 85),
("Anjali", 43, "Mechanical", 61),
("Sneha", 44, "Civil", 74),
("Geeta", 45, "Electrical", 90),
("Nikita", 46, "IT", 92),
("Tanvi", 47, "Computer Science", 96),
("Harsh", 48, "Mechanical", 64),
("Yash", 49, "Civil", 78);

insert into students value
("Ritika", 51, "IT", 84),
("Chirag", 52, "Computer Science", 79),
("Mitali", 53, "Mechanical", 66),
("Gaurav", 54, "Civil", 73),
("Rachna", 55, "Electrical", 86),
("Naman", 56, "IT", 89),
("Divya", 57, "Computer Science", 92),
("Laksh", 58, "Mechanical", 68),
("Parth", 59, "Civil", 77),
("Rekha", 60, "Electrical", 81),
("Snehal", 61, "IT", 83),
("Hemant", 62, "Computer Science", 88),
("Aniket", 63, "Mechanical", 72),
("Varun", 64, "Civil", 75),
("Akhil", 65, "Electrical", 90),
("Chaitra", 66, "IT", 79),
("Shivani", 67, "Computer Science", 95),
("Rajesh", 68, "Mechanical", 62),
("Mohan", 69, "Civil", 80),
("Sakshi", 70, "Electrical", 84),
("Dhruv", 71, "IT", 91),
("Jatin", 72, "Computer Science", 85),
("Rehan", 73, "Mechanical", 69),
("Zoya", 74, "Civil", 74),
("Farhan", 75, "Electrical", 88),
("Aliya", 76, "IT", 93),
("Mehul", 77, "Computer Science", 86),
("Bhavna", 78, "Mechanical", 65),
("Omkar", 79, "Civil", 72),
("Aman", 80, "Electrical", 95),
("Pawan", 81, "IT", 82),
("Kartik", 82, "Computer Science", 97),
("Alok", 83, "Mechanical", 63),
("Ritika", 84, "Civil", 76),
("Kiran", 85, "Electrical", 89),
("Reema", 86, "IT", 90),
("Shilpa", 87, "Computer Science", 84),
("Diksha", 88, "Mechanical", 67),
("Monica", 89, "Civil", 70),
("Rajiv", 90, "Electrical", 92),
("Siddhi", 91, "IT", 96),
("Om", 92, "Computer Science", 88),
("Vaani", 93, "Mechanical", 64),
("Bhavesh", 94, "Civil", 78),
("Sanjay", 95, "Electrical", 83),
("Lavanya", 96, "IT", 85),
("Aakash", 97, "Computer Science", 91),
("Pranav", 98, "Mechanical", 66),
("Ishita", 99, "Civil", 73),
("Madhav", 100, "Electrical", 87);

#--  SELECT* all students

SELECT * FROM students;

#--  WHERE -> students with marks > 80

SELECT * FROM students WHERE marks > 80;

#--  ORDER BY -> rank students by marks

SELECT * FROM students ORDER BY marks DESC;

#--  GROUP BY -> COUNT students in each department

SELECT department, COUNT(department) FROM STUDENTS GROUP BY DEPARTMENT;
