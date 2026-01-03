{% test seat_no_pattern (model, column_name) %}
  select {{ column_name }}
  from {{ model }}
  where not {{ column_name }} ~ '^[0-9]{1,2}[A-Z]+$'
{% endtest %}