--liquibase formatted sql

--changeset devi:0009 label:v1.0.5 

--comment: postgresql


CREATE TABLE public.m_job (
	id serial NOT NULL,
	"name" varchar(20) NOT NULL,
	created_at timestamptz NULL,
	created_by varchar(50) NULL,
	updated_at timestamptz NULL,
	updated_by varchar(50) NULL,
	deleted_at timestamptz NULL,
	deleted_by varchar(50) NULL,
	CONSTRAINT m_job_pk PRIMARY KEY (id)
);


--rollback DROP TABLE public.m_job;
