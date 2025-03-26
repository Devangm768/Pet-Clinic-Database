-- Pet Clinic Database Schema

CREATE DATABASE IF NOT EXISTS pet_clinic;
USE pet_clinic;

-- Customers Table
CREATE TABLE customers (
  customers_ID INT NOT NULL PRIMARY KEY,
  firstname VARCHAR(45) NOT NULL,
  lastname VARCHAR(45) NOT NULL,
  address VARCHAR(100) NOT NULL,
  contactnumber VARCHAR(20) NOT NULL,
  email VARCHAR(100) NOT NULL
);

-- Pets Table
CREATE TABLE pets (
  pet_id INT NOT NULL PRIMARY KEY,
  pet_name VARCHAR(45) NOT NULL,
  pet_type VARCHAR(45) NOT NULL,
  pet_breed VARCHAR(45) NOT NULL,
  pet_age VARCHAR(30) NOT NULL,
  pet_gender VARCHAR(10) NOT NULL,
  customers_customers_ID INT NOT NULL,
  FOREIGN KEY (customers_customers_ID) REFERENCES customers(customers_ID)
);

-- Doctors Table
CREATE TABLE doctors (
  doctors_id INT NOT NULL PRIMARY KEY,
  doctors_name VARCHAR(45) NOT NULL,
  doctors_specialization VARCHAR(45) NOT NULL,
  doctors_contactnumber VARCHAR(20) NOT NULL
);

-- Pet Visits Table
CREATE TABLE petvisit (
  visit_id INT NOT NULL PRIMARY KEY,
  dateofvisit DATE NOT NULL,
  pets_pet_id INT NOT NULL,
  doctors_doctors_id INT NOT NULL,
  FOREIGN KEY (pets_pet_id) REFERENCES pets(pet_id),
  FOREIGN KEY (doctors_doctors_id) REFERENCES doctors(doctors_id)
);

-- Payments Table
CREATE TABLE payments (
  payments_id INT NOT NULL PRIMARY KEY,
  paymentdate DATE NOT NULL,
  payment_type VARCHAR(45) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  customers_customers_ID INT NOT NULL,
  FOREIGN KEY (customers_customers_ID) REFERENCES customers(customers_ID)
);

-- Procedures Table
CREATE TABLE procedures (
  procedure_id INT NOT NULL PRIMARY KEY,
  procedure_name VARCHAR(45) NOT NULL,
  procedure_type VARCHAR(45) NOT NULL,
  procedure_cost DECIMAL(10,2) NOT NULL,
  pets_pet_id INT NOT NULL,
  doctors_doctors_id INT NOT NULL,
  FOREIGN KEY (pets_pet_id) REFERENCES pets(pet_id),
  FOREIGN KEY (doctors_doctors_id) REFERENCES doctors(doctors_id)
);

-- Medication Table
CREATE TABLE medication (
  prescription_id INT NOT NULL PRIMARY KEY,
  medication_type VARCHAR(45) NOT NULL,
  medication_cost DECIMAL(10,2) NOT NULL,
  pets_pet_id INT NOT NULL,
  doctors_doctors_id INT NOT NULL,
  FOREIGN KEY (pets_pet_id) REFERENCES pets(pet_id),
  FOREIGN KEY (doctors_doctors_id) REFERENCES doctors(doctors_id)
);
