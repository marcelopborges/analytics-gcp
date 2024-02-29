{{ 
    config(
        materialized='view',
        tags=['staging','dialy']
    )
    
}}


with stg_finances_v2 as 
(
    select * 
    from `mvp-hp.dados_hp_airbyte.organization_76632_finances_v2`
)

select * 
from stg_finances_v2