{{ 
    config(
        materialized='view',
        tags=['staging','dialy']
    )
    
}}


with stg_activities_v2 as 
(
    select * 
    from `dados_hp_airbyte.organization_76632_activities_v2`
)

select * 
from stg_activities_v2 as ac
