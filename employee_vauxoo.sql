-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
id character varying(2) NOT NULL,
first_name text,
last_name text
);

CREATE TABLE employee_department (
id character varying(2),
name text,
description text
);

CREATE TABLE employee_hobby (
id character varying(2) NOT NULL,
name text NOT NULL,
description text
);

INSERT INTO employee VALUES ('1a', 'Alejandra', 'Fernandez');
INSERT INTO employee VALUES ('2b', 'Eric', 'Hernandez');
INSERT INTO employee VALUES ('3c', 'Jose', 'Fentanez');
INSERT INTO employee VALUES ('3c', 'Carlos', 'Rangel');

INSERT INTO employee_department VALUES ('1a', 'Sistemas', 'Departamento de sistemas');
INSERT INTO employee_department VALUES ('2b', 'Recursos Humanos', 'Departamento de recursos humanos');
INSERT INTO employee_department VALUES ('3c', 'Recursos Financieros', 'Departamento de recursos financieros');
INSERT INTO employee_department VALUES ('4d', 'Vinculacion', 'Departamento de vinculacion');
INSERT INTO employee_department VALUES ('5e', 'Gestion de calidad', 'Departamento de gestion de calidad');
INSERT INTO employee_department VALUES ('6f', 'Mantenimiento', 'Departamento de mantenimiento');

INSERT INTO employee_hobby VALUES ('1a', 'Videojuegos', 'Personas que juegan videojuegos en su tiempo libre');
INSERT INTO employee_hobby VALUES ('2b', 'Musica', 'Personas que tocan algun instrumento');
INSERT INTO employee_hobby VALUES ('3c', 'Deportes', 'Personas que practican deportes');


ALTER TABLE ONLY employee_department
ADD CONSTRAINT employee_employee_pkey PRIMARY KEY (id);
