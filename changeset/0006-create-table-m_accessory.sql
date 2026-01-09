--liquibase formatted sql

--changeset devi:0006 label:v1.0.3

--comment: postgresql

CREATE TABLE public.m_accessory (
	id serial NOT NULL,
	"name" varchar(50) NOT NULL,
	hp int4 NULL,
	sp int4 NULL,
	patk int4 NULL,
	pdef int4 NULL,
	eatk int4 NULL,
	edef int4 NULL,
	spd int4 NULL,
	crit int4 NULL,
	effect text NULL,
	created_at timestamptz NULL,
	created_by varchar(50) NULL,
	updated_at timestamptz NULL,
	updated_by varchar(50) NULL,
	deleted_at timestamptz NULL,
	deleted_by varchar(50) NULL,
	CONSTRAINT m_accessory_pk PRIMARY KEY (id)
);

--rollback DROP TABLE public.m_accessory;
