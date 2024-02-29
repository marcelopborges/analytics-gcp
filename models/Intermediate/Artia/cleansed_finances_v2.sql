{{  
    config(materialized='view'),
    tags=['intermediate','dialy']
}}


with cleansed_finances as
( 
    select * from {{ ref('stg_finances_v2') }}
)

select
id
,date
,kind
,unit
,title
,amount
,user_id
,folder_id
,INITCAP(user_name) as user_name
,account_id
,breadcrumb
,unit_value
,activity_id
,cost_center
,description
,folder_name
,object_type
,total_value
,account_name
,finance_date
,finance_kind
,finance_unit
,time_entry_id
,finance_amount
,user_role_name
,created_for_user
,financial_rating
,INITCAP(responsible_name) as responsible_name
,expense_report_id
,responsible_email
,finance_unit_value
,refund_by_customer
,finance_cost_center
,finance_total_value
,responsible_user_id
,expense_report_status
,INITCAP(responsible_user_name) as responsible_user_name
,folder_last_project_id
,general_ledger_account
,account_organization_id
,finance_financial_rating
,finance_general_ledger_account
from cleansed_finances