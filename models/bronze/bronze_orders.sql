{{config(materialized='incremental', incremental_strategy='delete+insert', unique_key='id', merge_exclude_columns=['_dbt_source_relation'])}}

SELECT
*
FROM
{{source('landing','orders_incremental')}}

{% if is_incremental() %}
  where created_at > (select coalesce(max(created_at),to_timestamp('1970-01-01')) from {{ this }})
{% endif %}
