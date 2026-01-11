--liquibase formatted sql

--changeset devi:0010 label:v1.0.5 

--comment: postgresql


ALTER TABLE public.m_traveller DROP COLUMN job;

ALTER TABLE public.m_traveller ADD COLUMN job_id int4 NULL;


-- public.m_traveller foreign keys

ALTER TABLE public.m_traveller ADD CONSTRAINT m_traveller_m_job_fk FOREIGN KEY (job_id) REFERENCES public.m_job(id);


--rollback ALTER TABLE public.m_traveller DROP CONSTRAINT m_traveller_m_job_fk;
--rollback ALTER TABLE public.m_traveller DROP COLUMN job_id;
--rollback ALTER TABLE public.m_traveller ADD COLUMN job varchar(20) NULL;
