
# 🏥 My Clinic Booking System

## 📖 Description

The **My Clinic Booking System** is a relational database designed to manage and streamline operations within a medical clinic. It facilitates:

* **Patient Management**: Store and retrieve patient information.
* **Doctor Scheduling**: Manage doctor availability and appointments.
* **Appointment Booking**: Schedule, update, and track patient appointments.
* **Medical Records**: Maintain records of diagnoses, prescriptions, and notes.
* **Billing**: Handle billing information and payment statuses.
* **Feedback Collection**: Gather patient feedback post-appointments.
* **Department Management**: Organize doctors into departments or specialties.

This system ensures data integrity, reduces redundancy, and supports efficient clinic operations.

## 🚀 Importing The SQL File 

### Prerequisites

* **Database Server**: MySQL.
* **SQL Client**: Tools like MySQL Workbench.
* **SQL File**: `myclinic.sql` containing the database schema and sample data.

* **Set Up the Database**
1. **Installation**
   * Clone the Repository*
      ```bash
     git clone https://github.com/y-shiala/Week-8-Database-design-and-programming.git
     cd Week-8-Database-design-and-programming
      ```
   * **Using MySQL Workbench:**

     * Open MySQL Workbench and connect to your database server.
     * Create a new schema named `myclinic`.
     * Open the `myclinic.sql` file.
     * Execute the SQL script to create tables and insert sample data.

  

3. **Verify the Setup**

   * Ensure all tables are created:

     ```sql
     SHOW TABLES;
     ```

   * Check sample data:

     ```sql
     SELECT * FROM Patients;
     SELECT * FROM Doctors;
     ```

## 🗂️ Project Structure

* `myclinic.sql`: SQL script containing table definitions and sample data.
* `README.md`: Project documentation and setup instructions.

## Screenshot of My ERD

![myclinic drawio](https://github.com/user-attachments/assets/09ebb13d-1278-4576-8f8a-19e3d4011ea0)

## 🛠️ Usage

* **Patients**: Add, update, or delete patient records.
* **Doctors**: Manage doctor profiles and assign them to departments.
* **Appointments**: Schedule new appointments and update statuses.
* **Medical Records**: Record diagnoses, prescriptions, and notes for each appointment.
* **Billing**: Generate billing records and update payment statuses.
* **Feedback**: Collect and review patient feedback post-appointments.



