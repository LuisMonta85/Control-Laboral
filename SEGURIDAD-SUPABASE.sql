-- Seguridad RLS para Control Laboral
-- Ejecutar en Supabase > SQL Editor una vez que exista tu cuenta.
-- IMPORTANTE: no ejecutes esto antes de que la migración de datos esté completa.

alter table public.cl_settings enable row level security;
alter table public.cl_entries enable row level security;
alter table public.cl_night_weeks enable row level security;
alter table public.cl_night_days enable row level security;

create policy "cl_settings_owner_select" on public.cl_settings for select to authenticated using ((select auth.uid()) = user_id);
create policy "cl_settings_owner_insert" on public.cl_settings for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "cl_settings_owner_update" on public.cl_settings for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "cl_settings_owner_delete" on public.cl_settings for delete to authenticated using ((select auth.uid()) = user_id);

create policy "cl_entries_owner_select" on public.cl_entries for select to authenticated using ((select auth.uid()) = user_id);
create policy "cl_entries_owner_insert" on public.cl_entries for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "cl_entries_owner_update" on public.cl_entries for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "cl_entries_owner_delete" on public.cl_entries for delete to authenticated using ((select auth.uid()) = user_id);

create policy "cl_night_weeks_owner_select" on public.cl_night_weeks for select to authenticated using ((select auth.uid()) = user_id);
create policy "cl_night_weeks_owner_insert" on public.cl_night_weeks for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "cl_night_weeks_owner_update" on public.cl_night_weeks for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "cl_night_weeks_owner_delete" on public.cl_night_weeks for delete to authenticated using ((select auth.uid()) = user_id);

create policy "cl_night_days_owner_select" on public.cl_night_days for select to authenticated using ((select auth.uid()) = user_id);
create policy "cl_night_days_owner_insert" on public.cl_night_days for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "cl_night_days_owner_update" on public.cl_night_days for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "cl_night_days_owner_delete" on public.cl_night_days for delete to authenticated using ((select auth.uid()) = user_id);
