/*
  # Update init_state view

  1. Changes
    - Improve `init_state` view to properly check if CRM is initialized
*/

create or replace view init_state
  with (security_invoker=off)
  as
select count(id) as is_initialized
from (
  select id 
  from public.sales
  limit 1
) as sub;