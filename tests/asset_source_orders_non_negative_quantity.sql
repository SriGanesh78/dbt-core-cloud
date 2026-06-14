{{ config(severity = 'warn') }}

SELECT
*
FROM {{source('landing','orders')}}
WHERE quantity <= 0 or unit_price < 0