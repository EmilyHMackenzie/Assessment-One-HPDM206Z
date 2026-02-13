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

## Design Rationale

Although the assessment forum clarified that a combined table for doctors and patients was expected, this implementation uses separate tables for these entities. 

This design choice reflects standard relational database modelling principles, where doctors and patients represent distinct roles with different relationships and responsibilities. Separating them improves clarity, avoids unnecessary NULL values, and supports cleaner one-to-many relationships (e.g., one doctor to many patients).

All required relationships and queries function as specified in the assessment brief.

## Entity Relationship Diagram (ERD)
The ERD illustrates the structure of the database and the relationships between entities.
<img width="2320" height="840" alt="ERD Assessment One (1)" src="https://github.com/user-attachments/assets/fe21e8e4-668d-42ba-a12d-d4fc1983e1fb" />
- **PK** denotes a Primary Key  
- **FK** denotes a Foreign Key  
- The ERD image is also included in this repository as a PNG file titled **`ERD Assessment One.png`**

## Repository Contents
This repository contains the following files:

- `hospitals.csv` – Raw hospital data
- `doctors.csv` – Raw doctor data
- `patients.csv` – Raw patient data
- `prescriptions.csv` – Raw prescription data
- `hospital_database_dump.sql` – MySQL database dump containing table definitions and imported data
- `ERD Assessment One.png` – Entity Relationship Diagram for the database
- `README.md` – Project documentation

## Database Implementation
The database was created using MySQL by:
1. Defining tables based on the ERD
2. Assigning appropriate data types, primary keys, and foreign keys
3. Importing data from CSV files into the corresponding tables
4. Exporting the completed database using `mysqldump`

## SQL Queries
The database supports SQL queries to retrieve and analyse hospital data, including:
- Listing doctors by hospital
- Viewing prescriptions for specific patients
- Identifying prescribing patterns by doctors
- Adding new patient records
- Analysing prescription volumes
- Identifying hospitals based on size

Example SQL queries demonstrating these operations are provided in a separate file (`queries.sql`) and make use of joins, filtering, and aggregation functions.

These queries are written to support common analytical and administrative tasks within a hospital setting.

## Tools and Technologies
- MySQL
- Ubuntu (Linux)
- Git and GitHub
- OpenStack
