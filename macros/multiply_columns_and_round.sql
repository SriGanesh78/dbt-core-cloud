{% macro multiply_columns_and_round(col1, col2, num_decimal_places) %}
    round({{ col1 }} * {{ col2 }}, {{ num_decimal_places }})
{% endmacro %}