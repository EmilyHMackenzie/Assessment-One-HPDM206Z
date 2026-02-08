# GitHub Coding Task and Short Report - HPDM206Z

## Project Overview
This project uses MySQL to create a relational hospital database that allows information on hospitals, doctors, patients, and prescriptions to be queried and analysed.

The project was developed as part of Assessment 1 for HPDM206Z.

## Database Description
The hospital database consists of four main entities:

- **Hospitals** – stores hospital-level information such as name, address, size, type, and accreditation status.
- **Doctors** – stores doctor records, each linked to a single hospital.
- **Patients** – stores patient records, each assigned to a single doctor.
- **Prescriptions** – stores prescriptions issued to patients by doctors.

Relationships between these entities are defined using primary keys and foreign keys and are illustrated in the Entity Relationship Diagram (ERD).

## Entitiy Relationship Diagram (ERD)
The ERD illustrates the structure of the database and the relationships between entities.
<img width="2320" height="840" alt="ERD Assessment One (1)" src="https://github.com/user-attachments/assets/fe21e8e4-668d-42ba-a12d-d4fc1983e1fb" />
- **PK** denotes a Primary Key  
- **FK** denotes a Foreign Key  

