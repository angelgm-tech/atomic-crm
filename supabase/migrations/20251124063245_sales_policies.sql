/*
  # Update sales table policies

  1. Changes
    - Create private schema for internal functions
    - Remove overly permissive insert/update policies from sales table
    - Sales records should only be created/updated via auth triggers
*/

create schema if not exists "private";

set check_function_bodies = off;

drop policy if exists "Enable insert for authenticated users only" on "public"."sales";

drop policy if exists "Enable update for authenticated users only" on "public"."sales";