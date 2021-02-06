
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with stage_table as (
SELECT 
ID 
,Team 
,Country 
,NameF 
,NameL 
,Weight 
,DOB 
,Hometown 
,Prov 
,Pos 
,Age 
,HeightFt 
,HtIn
,BMI 

FROM DEMO_DB.PUBLIC.SAMPLE_TABLE

)

SELECT * from stage_table


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
