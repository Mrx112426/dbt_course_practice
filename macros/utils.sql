{%- macro concat_columns(columns, delim = ', ') -%}
  {%- for column in columns -%}
    {{ column }} {% if not loop.last %} || '{{ delim }}' || {% endif %}
  {%- endfor %}
{% endmacro %}