/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 27-���-2024 0:42:02 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Sequences for Autonumber Columns */

DROP SEQUENCE IF EXISTS kurs_id_seq
;

/* Drop Tables */

DROP TABLE IF EXISTS t_kurs CASCADE
;

/* Create Tables */

CREATE TABLE t_kurs
(
	kurs_id integer NOT NULL   DEFAULT NEXTVAL(('kurs_id_seq'::text)::regclass),
	kurs_name varchar(255) NULL,
	user_id integer NULL,
	todo_id integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE t_kurs ADD CONSTRAINT "PK_t_kurs"
	PRIMARY KEY (kurs_id)
;

CREATE INDEX "IXFK_t_kurs_t_TODO" ON t_kurs (todo_id ASC)
;

CREATE INDEX "IXFK_t_kurs_t_User" ON t_kurs (user_id ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE t_kurs ADD CONSTRAINT "FK_t_kurs_t_TODO"
	FOREIGN KEY (todo_id) REFERENCES "t_TODO" (todo_id) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE t_kurs ADD CONSTRAINT "FK_t_kurs_t_User"
	FOREIGN KEY (user_id) REFERENCES "t_User" (user_id) ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

CREATE SEQUENCE kurs_id_seq INCREMENT 1 START 1
;