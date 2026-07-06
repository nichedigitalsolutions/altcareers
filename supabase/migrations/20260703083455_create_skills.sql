-- Create skills table
create table public.skills (
    id bigint generated always as identity primary key,

    name text not null unique,
    slug text not null unique,
    description text,

    created_at timestamptz not null default now()
);

create index idx_skills_name
on public.skills(name);