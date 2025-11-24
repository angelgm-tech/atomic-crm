/*
  # Add sales_id to tasks table

  1. Changes
    - Add `sales_id` column to `tasks` table to track which sales rep owns the task
*/

alter table "public"."tasks" add column "sales_id" bigint;