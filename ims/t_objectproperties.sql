/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 27-���-2024 0:40:55 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS t_objectproperties CASCADE
;

/* Create Tables */

CREATE TABLE t_objectproperties
(
	property_id integer NOT NULL,
	object_id integer NULL   DEFAULT 0,
	property varchar(255) NULL,
	value varchar(255) NULL,
	notes text NULL,
	ims_guid varchar(40) NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE t_objectproperties ADD CONSTRAINT "PK_t_objectproperties"
	PRIMARY KEY (property_id)
;

ALTER TABLE t_objectproperties 
  ADD CONSTRAINT property_object UNIQUE (property_id,property)
;