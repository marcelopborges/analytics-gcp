{{ config(materialized='view') }}


with stg_projects_v2 as 
(
    select * 
    from `mvp-hp.dados_hp_airbyte.organization_76632_projects_v2`
)

select * 
from stg_projects_v2