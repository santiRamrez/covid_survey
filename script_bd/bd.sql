# CREACIÓN DE LA BASE DE DATOS

DROP DATABASE IF EXISTS covid_survey;
CREATE SCHEMA IF NOT EXISTS covid_survey;

USE covid_survey;

# CREACIÓN DE LA TABLA
CREATE TABLE REGISTER_DATA (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	full_name VARCHAR(150),
	email VARCHAR(100),
	age VARCHAR(10),
	country VARCHAR(150),
	diagnostic VARCHAR(100),
	dolor VARCHAR(150),
	sintomas VARCHAR(150),
	opinion VARCHAR(255)
);

/*
name
email
age
country
user_diagnosed
illExperience
symptoms
comment

*/

SELECT * FROM REGISTER_DATA;

DROP TABLE REGISTER_DATA;

/* INSERTAR DATOS */

insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (1, 'Carlo Whissell', 'cwhissell0@ehow.com', 1, 'Czech Republic', true, null, null, null);

