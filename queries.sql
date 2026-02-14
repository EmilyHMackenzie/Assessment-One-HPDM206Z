-- Query One: Print a list of all doctors based at a particular hospital

-- Example shown for hospital_id = 1

SELECT d.person_id,
       d.name,
       d.date_of_birth,
       d.address,
       d.role,
       h.name AS hospital_name
FROM doctors d
INNER JOIN hospitals h
    ON d.hospital_id = h.hospital_id
WHERE d.hospital_id = 1;

-- Query Two: Print all prescriptions for a particular patient ordered by prescription date (ascending)

-- Example shown for patient_id = 102

SELECT p.prescription_id,
       p.medication,
       p.prescription_date,
       pat.name AS patient_name
FROM prescriptions p
INNER JOIN patients pat
    ON p.patient_id = pat.person_id
WHERE p.patient_id = 102
ORDER BY p.prescription_date ASC;

-- Query Three: Print all prescriptions made by a particular doctor

-- Example shown for doctor_id = 1

SELECT p.prescription_id,
       p.medication,
       p.prescription_date,
       d.name AS doctor_name
FROM prescriptions p
INNER JOIN doctors d
    ON p.doctor_id = d.person_id
WHERE p.doctor_id = 1
ORDER BY p.prescription_date ASC;

-- Query Four: Add a new patient registered with a doctor

-- Example shown adds a patient with person_id = 999 and is registered to doctor_id = 10

INSERT INTO patients (person_id, name, date_of_birth, address, role, doctor_id)
VALUES (999, 'Test Patient', '2010-05-12', '123 Street', 'Patient', 10);

--Query Five: Identify which doctor has made the most prescriptions

SELECT d.person_id,
       d.name,
       COUNT(p.prescription_id) AS total_prescriptions
FROM prescriptions p
INNER JOIN doctors d
    ON p.doctor_id = d.person_id
GROUP BY d.person_id, d.name
ORDER BY total_prescriptions DESC
LIMIT 1; 

-- Query Six: Print all doctors at the hospital with the largest size

SELECT d.person_id,
       d.name,
       d.role,
       h.name AS hospital_name,
       h.size
FROM hospitals h
INNER JOIN doctors d
    ON h.hospital_id = d.hospital_id
WHERE h.size = (
    SELECT MAX(size)
    FROM hospitals
);
