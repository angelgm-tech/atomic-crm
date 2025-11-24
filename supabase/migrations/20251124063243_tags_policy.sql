/*
  # Add delete and update policies for tags

  1. Security
    - Add delete policy for tags table
    - Add update policy for tags table
*/

create policy "Enable delete for authenticated users only"
on "public"."tags"
as permissive
for delete
to authenticated
using (true);


create policy "Enable update for authenticated users only"
on "public"."tags"
as permissive
for update
to authenticated
using (true);