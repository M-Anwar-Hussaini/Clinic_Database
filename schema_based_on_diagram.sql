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