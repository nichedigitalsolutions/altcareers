-- Create careers table
create table public.careers (
    id bigint generated always as identity primary key,

    category_id bigint not null references public.categories(id) on delete restrict,

    title text not null,
    slug text not null unique,
    summary text,
    description text,

    salary_min integer,
    salary_max integer,

    difficulty_level text,
    demand_level text,
    ai_risk text,

    remote_friendly boolean default false,

    featured boolean default false,
    published boolean default true,

    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create index idx_careers_category
on public.careers(category_id);

create index idx_careers_slug
on public.careers(slug);

create index idx_careers_title
on public.careers(title);