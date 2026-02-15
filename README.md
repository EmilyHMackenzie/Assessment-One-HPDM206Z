# GitHub Coding Task and Short Report - HPDM206Z

## Project Overview
This project involves the design, implementation, and querying of a relational hospital database using MySQL. The system enables structured storage, retrieval, and analysis of data relating to hospitals, doctors, patients, and prescriptions.

## Database Description
The hospital database consists of four main entities:

- **Hospitals** – stores hospital-level information such as name, address, size, type, and accreditation status.
- **Doctors** – stores doctor records, each linked to a single hospital.
- **Patients** – stores patient records, each assigned to a single doctor.
- **Prescriptions** – stores prescriptions issued to patients by doctors.

Relationships between these entities are implemented using primary and foreign key constraints and are illustrated in the Entity Relationship Diagram (ERD).

## Design Rationale

The database design follows relational modelling principles by separating hospitals, doctors, patients, and prescriptions into distinct tables.

This structure avoids redundancy, supports clear one-to-many relationships (e.g., one doctor to many patients), and maintains referential integrity using primary and foreign keys.

## Entity Relationship Diagram (ERD)
The ERD illustrates the structure of the database and the relationships between entities.
<img width="2320" height="840" alt="ERD Assessment One (1)" src="https://github.com/user-attachments/assets/fe21e8e4-668d-42ba-a12d-d4fc1983e1fb" />
- **PK** denotes a Primary Key  
- **FK** denotes a Foreign Key  
- Foreign key constraints were implemented to enforce referential integrity and ensure consistency between related tables.
- The ERD image is also included in this repository as a PNG file titled **`Hospital_Database_ERD.png`**

## Planning Documentation
Prior to implementing the database, pseudocode was created to plan the structure of the tables, their fields, and the relationships between entities. The pseudocode also outlines the logical steps for each required SQL query.

This planning process ensured clarity in database design and alignment with relational modelling principles before implementation in MySQL.

The pseudocode file is included in this repository as `pseudocode.txt`

## Repository Contents
This repository contains the following files:

- `hospitals.csv` – Raw hospital data
- `doctors.csv` – Raw doctor data
- `patients.csv` – Raw patient data
- `prescriptions.csv` – Raw prescription data
- `pseudocode.txt` – Planning pseudocode for database design and query logic
- `hospital_database_dump.sql` – MySQL database dump containing table definitions and imported data
- `Hospital_Database_ERD.png` – Entity Relationship Diagram for the database
- `README.md` – Project documentation
- `queries.sql` – SQL query scripts

## Database Implementation
The database was created using MySQL by:
1. Defining tables based on the ERD
2. Assigning appropriate data types, primary keys, and foreign keys
3. Importing data from CSV files into the corresponding tables
4. Exporting the completed database using `mysqldump`

## How to Use the Database

1. Import the database using the `hospital_database_dump.sql` file:
```bash
mysql -u root -p < hospital_database_dump.sql
```
2. Select the database in MySQL:
```sql
USE hospital_database;
```
3. Execute the queries contained in `queries.sql`
4. Modify the WHERE clause values in the queries to retrieve different hospitals, doctors, or patients as required

## SQL Queries
The file `queries.sql` contains the SQL queries implemented for this database.

The implemented queries are:

- **Query 1 – List all doctors based at a particular hospital**  
  Retrieves all doctors assigned to a specified hospital using an `INNER JOIN` between the `doctors` and `hospitals` tables.

- **Query 2 – List all prescriptions for a particular patient ordered by prescription date**  
  Retrieves all prescriptions issued to a specified patient and orders them in ascending date order using `ORDER BY`.

- **Query 3 – List all prescriptions made by a particular doctor**  
  Retrieves all prescriptions written by a specified doctor using filtering and date ordering.

- **Query 4 – Add a new patient registered with a doctor**  
  Inserts a new patient record into the `patients` table and assigns the patient to a specific doctor using an `INSERT` statement.

- **Query 5 – Identify which doctor has made the most prescriptions**  
  Uses `COUNT()`, `GROUP BY`, `ORDER BY`, and `LIMIT` to determine which doctor has issued the highest number of prescriptions.

- **Query 6 – List all doctors at the hospital with the largest size (number of beds)**  
  Uses a subquery with `MAX(size)` to identify the largest hospital and retrieves all doctors assigned to it.

## Tools and Technologies
- MySQL
- Ubuntu (Linux)
- Git and GitHub
- OpenStack
