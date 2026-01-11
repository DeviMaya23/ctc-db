--liquibase formatted sql

--changeset devi:seeding-0002 label:v1.0.5

--comment: postgresql


INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Warrior', NOW(), 'seed');
INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Merchant', NOW(), 'seed');
INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Thief', NOW(), 'seed');
INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Apothecary', NOW(), 'seed');
INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Hunter', NOW(), 'seed');
INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Cleric', NOW(), 'seed');
INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Scholar', NOW(), 'seed');
INSERT INTO public.m_job ("name", "created_at", "created_by") VALUES('Dancer', NOW(), 'seed');