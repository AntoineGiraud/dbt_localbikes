{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- if target.name in ('prod') -%}
        {%- if not custom_schema_name is none -%}
            {{ custom_schema_name | trim }}
        {%- else -%}
            {{ target.schema | trim }}
        {%- endif -%}
    {%- else -%}
        {%- if not custom_schema_name is none -%}
            {{ custom_schema_name | trim }}_{{ target.schema | trim }}
        {%- else -%}
            {{ target.schema | trim }}
        {%- endif -%}
    {%- endif -%}
{%- endmacro %}
