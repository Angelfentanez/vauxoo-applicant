--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE employee (
    id character varying(18) NOT NULL,
    "First Name" text,
    "Last Name" text,
    jefe text
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employee_department; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE employee_department (
    id character varying(18),
    "Name" text,
    "Description" text
);


ALTER TABLE public.employee_department OWNER TO postgres;

--
-- Name: employee_hobby; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE employee_hobby (
    id character varying(18) NOT NULL,
    name text NOT NULL,
    description text
);


ALTER TABLE public.employee_hobby OWNER TO postgres;

--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO employee VALUES ('FEFA876245HOCNLN01', 'Alejandra', 'Fernandez', 'Jose Fentanez');
INSERT INTO employee VALUES ('HECE732123HOCNLN03', 'Eric', 'Hernandez', 'Jose Fentanez');
INSERT INTO employee VALUES ('FEDA930406HOCNLN00', 'Jose', 'Fentanez', 'Carlos Rangel');
INSERT INTO employee VALUES ('RAAC542908HOCNLN02', 'Carlos', 'Rangel', NULL);


--
-- Data for Name: employee_department; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO employee_department VALUES ('FEDA930406HOCNLN00', 'Sistemas', 'Departamento de sistemas');
INSERT INTO employee_department VALUES ('FEFA876245HOCNLN01', 'Recursos Humanos', 'Departamento de recursos humanos');
INSERT INTO employee_department VALUES ('RAAC542908HOCNLN02', 'Recursos Financieros', 'Departamento de recursos financieros');
INSERT INTO employee_department VALUES ('HECE732123HOCNLN03', 'Sistemas', 'Departamento de sistemas');
INSERT INTO employee_department VALUES (NULL, 'Vinculacion', 'Departamento de vinculacion');
INSERT INTO employee_department VALUES (NULL, 'Gestion de calidad', 'Departamento de gestion de calidad');
INSERT INTO employee_department VALUES (NULL, 'Mantenimiento', 'Departamento de mantenimiento');


--
-- Data for Name: employee_hobby; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO employee_hobby VALUES ('FEDA930406HOCNLN00', 'Videojuegos', 'Personas que juegan videojuegos en su tiempo libre');
INSERT INTO employee_hobby VALUES ('RAAC542908HOCNLN02', 'Videojuegos', 'Personas que juegan videojuegos en su tiempo libre');
INSERT INTO employee_hobby VALUES ('FEDA930406HOCNLN00', 'Musica', 'Personas que tocan algun instrumento');
INSERT INTO employee_hobby VALUES ('FEFA876245HOCNLN01', 'Musica', 'Personas que tocan algun instrumento');
INSERT INTO employee_hobby VALUES ('HECE732123HOCNLN03', 'Musica', 'Personas que tocan algun instrumento');
INSERT INTO employee_hobby VALUES ('FEFA876245HOCNLN01', 'Deportes', 'Personas que practican deportes');
INSERT INTO employee_hobby VALUES ('RAAC542908HOCNLN02', 'Deportes', 'Personas que practican deportes');
INSERT INTO employee_hobby VALUES ('HECE732123HOCNLN03', 'Deportes', 'Personas que practican deportes');


--
-- Name: employee_department_ID_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY employee_department
    ADD CONSTRAINT "employee_department_ID_key" UNIQUE (id);


--
-- Name: employee_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_employee_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
