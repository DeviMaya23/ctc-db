--liquibase formatted sql

--changeset devi:0007 label:v1.0.3

--comment: postgresql

ALTER TABLE public.m_traveller ADD COLUMN accessory_id int4 NULL;

-- public.m_traveller foreign keys

ALTER TABLE public.m_traveller ADD CONSTRAINT m_traveller_m_accessory_fk FOREIGN KEY (accessory_id) REFERENCES public.m_accessory(id);

--rollback ALTER TABLE public.m_traveller DROP CONSTRAINT m_traveller_m_accessory_fk;
--rollback ALTER TABLE public.m_traveller DROP COLUMN accessory_id;
