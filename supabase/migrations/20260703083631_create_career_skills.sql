create table public.career_skills (
    career_id bigint not null references public.careers(id) on delete cascade,
    skill_id bigint not null references public.skills(id) on delete cascade,

    primary key (career_id, skill_id)
);