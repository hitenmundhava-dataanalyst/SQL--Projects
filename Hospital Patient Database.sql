-- create a database 
create database Hospital;

-- use a database
use Hospital;

-- create a patients table
CREATE TABLE Patients (
	patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    disease VARCHAR(100),
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Doctors table
CREATE TABLE Doctors(
	doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100)
    );
    
-- Treatments table
CREATE TABLE Treatments(
	treatment_id INT PRIMARY KEY,
    patient_id INT,
    treatment_date DATE,
    treatment_details VARCHAR(255),
	FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Doctors insert Data
INSERT INTO Doctors VALUES
(1, 'Dr. Sharma', 'Cardiology'),
(2, 'Dr. Mehta', 'Neurology'),
(3, 'Dr. Khan', 'Orthopedics'),
(4, 'Dr. Patel', 'Dermatology'),
(5, 'Dr. Singh', 'Oncology'),
(6, 'Dr. Iyer', 'Gastroenterology'),
(7, 'Dr. Das', 'Pediatrics'),
(8, 'Dr. Banerjee', 'Psychiatry'),
(9, 'Dr. Gupta', 'Endocrinology'),
(10, 'Dr. Rao', 'Pulmonology');

-- Patients insert Data
INSERT INTO Patients VALUES
(101, 'Amit', 65, 'Heart Disease', 1),
(102, 'Sita', 72, 'Stroke', 2),
(103, 'Raj', 55, 'Fracture', 3),
(104, 'Gita', 68, 'Heart Disease', 1),
(105, 'Ravi', 80, 'Stroke', 2),
(106, 'Pooja', 45, 'Skin Allergy', 4),
(107, 'Kiran', 60, 'Cancer', 5),
(108, 'Manoj', 50, 'Ulcer', 6),
(109, 'Nisha', 35, 'Asthma', 10),
(110, 'Deepak', 40, 'Depression', 8),
(111, 'Anita', 63, 'Diabetes', 9),
(112, 'Ramesh', 70, 'Heart Disease', 1),
(113, 'Seema', 66, 'Stroke', 2),
(114, 'Vikas', 58, 'Fracture', 3),
(115, 'Sunita', 77, 'Cancer', 5),
(116, 'Alok', 62, 'Diabetes', 9),
(117, 'Meena', 49, 'Asthma', 10),
(118, 'Tina', 73, 'Stroke', 2),
(119, 'Kamal', 52, 'Ulcer', 6),
(120, 'Pinky', 67, 'Depression', 8);

-- treatments insert data
INSERT INTO Treatments VALUES
(201, 101, '2025-08-01', 'Bypass Surgery'),
(202, 102, '2025-08-02', 'Rehabilitation'),
(203, 103, '2025-08-03', 'Bone Surgery'),
(204, 104, '2025-08-04', 'Medication'),
(205, 105, '2025-08-05', 'Therapy'),
(206, 106, '2025-08-06', 'Allergy Test'),
(207, 107, '2025-08-07', 'Chemotherapy'),
(208, 108, '2025-08-08', 'Endoscopy'),
(209, 109, '2025-08-09', 'Inhaler Treatment'),
(210, 110, '2025-08-10', 'Counseling'),
(211, 111, '2025-08-11', 'Insulin Therapy'),
(212, 112, '2025-08-12', 'Stent Surgery'),
(213, 113, '2025-08-13', 'Physiotherapy'),
(214, 114, '2025-08-14', 'Bone Plaster'),
(215, 115, '2025-08-15', 'Radiation'),
(216, 116, '2025-08-16', 'Diet Plan'),
(217, 117, '2025-08-17', 'Oxygen Therapy'),
(218, 118, '2025-08-18', 'Brain Scan'),
(219, 119, '2025-08-19', 'Medication'),
(220, 120, '2025-08-20', 'Psychotherapy');

-- Patients assigned to doctors
SELECT p.name AS patient_name, p.age, p.disease, d.name AS doctor_name, d.specialization
FROM Patients p
JOIN Doctors d ON p.doctor_id = d.doctor_id;

-- patients older than 60
SELECT name, age, disease
FROM Patients
WHERE age > 60;

-- Number of cases per disease
SELECT disease, COUNT(*) AS number_of_cases
FROM Patients
GROUP BY disease;