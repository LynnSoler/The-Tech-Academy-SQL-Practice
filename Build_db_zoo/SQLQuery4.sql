USE db_zoo;

CREATE TABLE tbl_animalia (
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	animalia_type VARCHAR(50) NOT NULL
);

INSERT INTO tbl_animalia
	(animalia_type)
	VALUES
	('vertebrate')
	('invertebrate')
;

SELECT * FROM tbl_animalia;


CREATE TABLE tbl_class (
	class_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	class_type VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_class;
	(class type)
	VALUES
	('bird'),
	('reptilian'),
	('mammal'),
	('arthropod'),
	('fish'),
	('worm'),
	('cnidaria'),
	('echinodera')
);

SELECT * FROM tbl_class;

--UPDATE tbl_class SET class_type = 'bird' WHERE class_type = 'birds'; -- (UPDATE) = PERMANENT CHANGE--
--SELECT REPLACE(class_type, 'bird', 'birds') FROM tbl_class; = TEMP CHANGE(SELECT REPLACE) vs (UPDATE)--
--SELECT UPPER(class_type) FROM tbl_class WHERE class_type = 'bird'; CHANGES "bird" to "BIRD" = CAPS

SELECT REPLACE(class_type, 'birds', 'bird') FROM tbl_class;

SELECT COUNT(class_type) FROM tbl_class WHERE class_type = 'bird';

CREATE TABLE tbl_persons (
	persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	persons_fname VARCHAR(50) NOT NULL,
	persons_lname VARCHAR(50) NOT NULL,
	persons_contact VARCHAR(50) NOT NULL
);

INSERT INTO tbl_persons
	(persons_fname, persons_lname, persons_contact)
	VALUES
	('bob', 'smith', '232-345-5678'),
	('mary', 'ann', '232-345-5678'),
	('tex', 'burns', '232-345-5678'),
	('gerry', 'kerns', '232-345-5678'),
	('sally', 'fields', '232-345-5678')
;

SELECT * FROM tbl_persons;
SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname LIKE 'ke%';
--GRAY'D KEYS ARE BUILT-IN FUNCTIONS; USING 'ke%' = WILDCARD TO RETRIEVE L_NAMES STARTING WITH "ke"

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname LIKE '_u%s%';

UPDATE tbl_persons SET persons_fname = 'mars' WHERE persons_fname = 'bob';
--=PERMANENT CHANGE 'BOB' TO 'MARS'.

SELECT * FROM tbl_persons;

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_lname; 
--adding DESC before ; will order data in DEscending fnames.

SELECT persons_fnam AS 'First Name', persons_lname AS 'Last Name', persons_contact AS 'Phone:' FROM tbl_persons WHERE persons_lname LIKE '_u%s%';
--adding AS '____' assigns ALIAS'S to column titles here

DELETE FROM tbl_persons WHERE persons_lname = 'smith';
--DELETES ALL PERSONS W/LNAME 'SMITH'

DROP TABLE tbl_persons;
--DROP TABLE deletes 'tbl_persons'.. 
--if table is selected (SELECT * FROM tbl_persons;) = no longer recognized. (=Error: "Invalid object name")
