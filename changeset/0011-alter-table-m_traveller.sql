--liquibase formatted sql

--changeset devi:0011 label:v1.0.6

--comment: postgresql


ALTER TABLE public.m_traveller ADD COLUMN banner varchar(50) NULL;


--rollback ALTER TABLE public.m_traveller DROP COLUMN banner;
