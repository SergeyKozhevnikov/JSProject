/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 27-���-2024 0:40:55 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Sequences for Autonumber Columns */

DROP SEQUENCE IF EXISTS public.object_id_seq
;

/* Drop Tables */

DROP TABLE IF EXISTS public.t_object CASCADE
;

/* Create Tables */

CREATE TABLE public.t_object
(
	object_id integer NOT NULL   DEFAULT NEXTVAL(('object_id_seq'::text)::regclass),
	object_type varchar(255) NULL,
	name varchar(255) NULL,
	alias varchar(255) NULL,
	author varchar(255) NULL,
	version varchar(50) NULL   DEFAULT '1.0',
	note text NULL,
	package_id integer NULL   DEFAULT 0,
	stereotype varchar(255) NULL,
	status varchar(50) NULL,
	ims_guid varchar(40) NULL,
	property_id integer NULL,
	connector_id integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE public.t_object ADD CONSTRAINT "PK_t_object"
	PRIMARY KEY (object_id)
;

ALTER TABLE public.t_object 
  ADD CONSTRAINT uq_object_ims_guid UNIQUE (ims_guid)
;

CREATE INDEX "IXFK_t_object_t_objectproperties" ON public.t_object (property_id ASC)
;

CREATE INDEX "IXFK_t_object_t_package" ON public.t_object (package_id ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE public.t_object ADD CONSTRAINT "FK_t_object_t_objectproperties"
	FOREIGN KEY (property_id) REFERENCES t_objectproperties (property_id) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE public.t_object ADD CONSTRAINT "FK_t_object_t_package"
	FOREIGN KEY (package_id) REFERENCES t_package (package_id) ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

CREATE SEQUENCE public.object_id_seq INCREMENT 1 START 1
;