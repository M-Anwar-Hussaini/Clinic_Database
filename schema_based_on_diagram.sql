CREATE DATABASE clinic

-- Patients table
CREATE TABLE patients (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE
);

-- medical_histories table
CREATE TABLE medical_histories (
  id BIGSERIAL PRIMARY KEY,
  admitted_at TIMESTAMP,
  patient_id INTEGER REFERENCES patients(id),
  status VARCHAR(50)
);

-- treatment table
CREATE TABLE treatments(
  id BIGSERIAL PRIMARY KEY,
  type VARCHAR(50),
  name VARCHAR(50)
);

-- visit table is an associate table that creates the many-to-many relationship
-- between medical_histories table and treatments table
CREATE TABLE visits (
  id BIGSERIAL PRIMARY KEY,
  visit_date DATE,
  medical_history_id INTEGER REFERENCES medical_histories(id),
  treatment_id INTEGER REFERENCES treatments(id)
);