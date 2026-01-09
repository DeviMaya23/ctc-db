--liquibase formatted sql

--changeset devi:0005 label:v1.0.3

--comment: postgresql

-- Rename table
ALTER TABLE public.tr_traveller RENAME TO m_traveller;

-- Rename primary key constraint
ALTER TABLE public.m_traveller RENAME CONSTRAINT tr_traveller_pk TO m_traveller_pk;

-- Rename foreign key constraint
ALTER TABLE public.m_traveller RENAME CONSTRAINT tr_traveller_m_influence_fk TO m_traveller_m_influence_fk;

--rollback ALTER TABLE public.m_traveller RENAME CONSTRAINT m_traveller_m_influence_fk TO tr_traveller_m_influence_fk;
--rollback ALTER TABLE public.m_traveller RENAME CONSTRAINT m_traveller_pk TO tr_traveller_pk;
--rollback ALTER TABLE public.m_traveller RENAME TO tr_traveller;
