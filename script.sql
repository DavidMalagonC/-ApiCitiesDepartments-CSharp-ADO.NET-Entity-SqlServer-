CREATE DATABASE api();
USE api;
CREATE TABLE departments (
department_id INT PRIMARY KEY,
name NCHAR(50),
CONSTRAINT fk_department_id FOREIGN KEY (department_id)
REFERENCES departments (department_id)
);
CREATE TABLE cities (
city_id INT PRIMARY KEY,
name NCHAR (50),
department_id INT (50),
CONSTRAINT fk_department_id FOREIGN KEY (department_id)
REFERENCES departments (department_id)
);
INSERT INTO departments(name) VALUES ('Bogota.D.C'), ('Cundinamarca'), ('Antioquia'),('Boyaca'), ('Santander') ;
INSERT INTO cities(name, department_id) VALUES ('Bogota.D.C',1), ('Bogota.D.C',1), ('Medellin',3), ('Tunja', 4), ('Bucaramanga',5) ;

