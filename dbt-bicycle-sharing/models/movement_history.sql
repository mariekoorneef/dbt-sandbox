{{ config(materialized='table') }}

{% set views = [ref("stg_od_2014"), ref("stg_od_2015")] %}

{% for v in views %}
    select *
    from {{ v }}
{% if not loop.last %}union{% endif %}
{% endfor %}