# 🐾 Pet Clinic Data Infrastructure Project

A MySQL-based relational database system designed to manage and track all key operations for a pet clinic — including customers, pets, visits, payments, procedures, prescriptions, and doctors.

---

## 📌 Project Objective

To develop a complete **data infrastructure** and **ETL pipeline** that supports the operational needs of a growing pet clinic. This includes tracking customer data, pet profiles, clinic visits, doctor information, payments, procedures, and medications.

---

## 🧱 Key Entities & Relationships

| Entity        | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| Customers     | Stores personal and contact details of each customer                       |
| Pets          | Linked to customers; includes pet name, type, breed, age, and gender       |
| Doctors       | Medical staff information; name, specialization, and contact number        |
| Pet Visits    | Tracks pet appointments with doctors and visit dates                       |
| Payments      | Captures customer transactions; includes date, type, and amount            |
| Procedures    | Medical operations linked to pets and doctors with cost details            |
| Medication    | Prescriptions with type and cost, associated with pets and doctors         |

---

## 🧠 Business Rules & Assumptions

- A customer can own multiple pets.
- Each visit, payment, and procedure is uniquely identifiable.
- Doctors can perform multiple procedures and prescribe multiple medications.
- Every procedure is associated with both a pet and a doctor.
- Each prescription is uniquely tied to a pet.

---

## 🧩 Database Design

### Conceptual Model
Based on Chen’s ER model, reflecting real-world entity relationships.

### Logical Model
ERD diagram to visualize keys, attributes, and cardinalities.

### Physical Model
Structured with **MySQL** using normalized relational schema. Includes:
- Foreign key constraints
- Indexing for optimized lookups
- Primary keys on all tables

---

## 🛠 Technologies Used

| Category          | Tools/Technologies                  |
|-------------------|-------------------------------------|
| Database          | MySQL                               |
| Modeling Method   | Chen’s ER Model                     |
| SQL Features      | Foreign Keys, Indexing, Normalization |
| Development Tool  | MySQL Workbench                     |
| Language/Script   | SQL (DDL + Constraints)             |

---

## ⚙️ Installation

1. Clone this repository.
2. Open `pet_clinic_schema.sql` in MySQL Workbench.
3. Execute the script to set up all tables and constraints.

---

## 📈 Future Enhancements

- ETL pipeline for CSV ingestion and reporting
- BI dashboards with Power BI or Tableau
- Integration with appointment booking APIs
- Python scripts for automation and data analysis

---

<details>
<summary><strong>👥 Contributors</strong></summary>

- Sai Snehal Grandhi  
- Devang Makhdiya  
- Deepa Nalla  
- Chethan Rajendra  
- Tanya Shree Verma  
- Syed Tiham Zaki  

</details>


## 📫 Contact

**Devang Makhdiya**  
📍 Dallas, TX  
📧 devangm2025@gmail.com  
🔗 [LinkedIn](https://linkedin.com/in/devangmakhdiya)

---

*Built to help pet clinics scale with smart data.*
