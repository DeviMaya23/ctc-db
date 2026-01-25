--liquibase formatted sql

--changeset devi:0012 label:v1.0.7

--comment: postgresql


ALTER TABLE public.m_traveller ADD CONSTRAINT m_traveller_name_unique UNIQUE (name);


--rollback ALTER TABLE public.m_traveller DROP CONSTRAINT m_traveller_name_unique;
