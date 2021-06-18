# CREACIÓN DE LA BASE DE DATOS

DROP DATABASE IF EXISTS covid_survey;
CREATE SCHEMA IF NOT EXISTS covid_survey;

USE covid_survey;

# CREACIÓN DE LA TABLA
CREATE TABLE REGISTER_DATA (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	full_name VARCHAR(150),
	email VARCHAR(100),
	age VARCHAR(2),
	country VARCHAR(150),
	diagnostic BOOLEAN,
	dolor VARCHAR(150) NULL,
	sintomas VARCHAR(150) NULL,
	opinion VARCHAR(150) NULL
);

SELECT * FROM REGISTER_DATA;

DROP TABLE REGISTER_DATA;

# INSERTA DATOS

insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (1, 'Carlo Whissell', 'cwhissell0@ehow.com', 1, 'Czech Republic', true, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (2, 'Arliene Deverall', 'adeverall1@prlog.org', 2, 'Argentina', false, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (3, 'Lek Trouel', 'ltrouel2@hugedomains.com', 3, 'Greece', true, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (4, 'Hanna Lyal', 'hlyal3@un.org', 4, 'Sweden', true, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (5, 'Katharyn Breckell', 'kbreckell4@gmpg.org', 5, 'Uruguay', false, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (6, 'Royall Tomaskunas', 'rtomaskunas5@jiathis.com', 6, 'China', true, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (7, 'Filippo Scheu', 'fscheu6@usnews.com', 7, 'Morocco', false, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (8, 'Iorgo Joannidi', 'ijoannidi7@nationalgeographic.com', 8, 'Peru', true, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (9, 'Cassie Teaz', 'cteaz8@vinaora.com', 9, 'Japan', true, null, null, null);
insert into REGISTER_DATA (id, full_name, email, age, country, diagnostic, dolor, sintomas, opinion) values (10, 'Justen Kopmann', 'jkopmann9@redcross.org', 10, 'China', true, null, null, null);