--liquibase formatted sql

--changeset devi:seeding-0001 label:v1.0.5

--comment: postgresql

INSERT INTO public.m_influence
("name", "created_at", "created_by")
VALUES('Wealth', NOW(), 'seed');
INSERT INTO public.m_influence
("name", "created_at", "created_by")
VALUES('Power', NOW(), 'seed');
INSERT INTO public.m_influence
("name", "created_at", "created_by")
VALUES('Fame', NOW(), 'seed');
INSERT INTO public.m_influence
("name", "created_at", "created_by")
VALUES('Opulence', NOW(), 'seed');
INSERT INTO public.m_influence
("name", "created_at", "created_by")
VALUES('Dominance', NOW(), 'seed');
INSERT INTO public.m_influence
("name", "created_at", "created_by")
VALUES('Prestige', NOW(), 'seed');