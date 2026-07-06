-- Create categories table
create table public.categories (
    id bigint generated always as identity primary key,

    name text not null,
    slug text not null unique,
    description text,
    icon text,

    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

-- Index for faster lookups
create index idx_categories_name
on public.categories(name);

create index idx_categories_slug
on public.categories(slug);