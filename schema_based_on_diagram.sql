CREATE DATABASE clinic

-- Patients table
CREATE TABLE patients (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE
);

