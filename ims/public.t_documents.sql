/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 27-���-2024 0:40:55 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS public.t_documents CASCADE
;

/* Create Tables */

CREATE TABLE public.t_documents
(
	doc_id varchar(40) NOT NULL,
	docname varchar(100) NULL,
	notes varchar(255) NULL,
	style varchar(255) NULL,
	element_id varchar(40) NOT NULL,
	elementtype varchar(50) NOT NULL,
	strcontent text NULL,
	bincontent bytea NULL,
	doctype varchar(100) NULL,
	author varchar(50) NULL,
	isactive integer NULL   DEFAULT 1,
	sequence integer NULL   DEFAULT 0,
	docdate timestamp without time zone NULL,
	object_id integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE public.t_documents ADD CONSTRAINT "PK_t_documents"
	PRIMARY KEY (doc_id)
;

CREATE INDEX "IXFK_t_documents_t_object" ON public.t_documents (object_id ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE public.t_documents ADD CONSTRAINT "FK_t_documents_t_object"
	FOREIGN KEY (object_id) REFERENCES public.t_object (object_id) ON DELETE No Action ON UPDATE No Action
;