--liquibase formatted sql

--changeset devi:0008 label:v1.0.4

--comment: postgresql

-- Make stat columns and effect NOT NULL in m_accessory
ALTER TABLE public.m_accessory ALTER COLUMN hp SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN sp SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN patk SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN pdef SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN eatk SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN edef SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN spd SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN crit SET NOT NULL;
ALTER TABLE public.m_accessory ALTER COLUMN effect SET NOT NULL;

--rollback ALTER TABLE public.m_accessory ALTER COLUMN effect DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN crit DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN spd DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN edef DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN eatk DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN pdef DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN patk DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN sp DROP NOT NULL;
--rollback ALTER TABLE public.m_accessory ALTER COLUMN hp DROP NOT NULL;
