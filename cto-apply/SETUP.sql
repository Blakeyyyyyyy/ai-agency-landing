-- Run once in Supabase SQL editor (project klyiqncsgxcrbdgonaaj)
create table if not exists public.cto_applications (
  id           uuid primary key default gen_random_uuid(),
  created_at   timestamptz not null default now(),
  name         text,
  email        text,
  source       text,
  submitted_at timestamptz,
  payload      jsonb,
  rating       text,          -- you fill in: Exceptional / Strong / Potential / Weak
  notes        text
);

alter table public.cto_applications enable row level security;

-- the public form may insert, and nothing else
create policy "anon can apply"
  on public.cto_applications for insert to anon with check (true);
