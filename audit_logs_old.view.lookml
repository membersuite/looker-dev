- view: audit_logs_old
  sql_table_name: public.audit_logs_old
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: actor_id
    type: string
    sql: ${TABLE}.actor_id

  - dimension: actor_name
    type: string
    sql: ${TABLE}.actor_name

  - dimension: actor_type
    type: string
    sql: ${TABLE}.actor_type

  - dimension: affected_fields
    type: string
    sql: ${TABLE}.affected_fields

  - dimension: affected_record_id
    type: string
    sql: ${TABLE}.affected_record_id

  - dimension: affected_record_name
    type: string
    sql: ${TABLE}.affected_record_name

  - dimension: affected_record_type
    type: string
    sql: ${TABLE}.affected_record_type

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: ip_address
    type: string
    sql: ${TABLE}.ip_address

  - dimension: isp
    type: string
    sql: ${TABLE}.isp

  - dimension: key
    type: number
    sql: ${TABLE}.key

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: operating_system
    type: string
    sql: ${TABLE}.operating_system

  - dimension: operating_system_namae
    type: string
    sql: ${TABLE}.operating_system_namae

  - dimension: operating_system_version
    type: number
    sql: ${TABLE}.operating_system_version

  - dimension: partition_key
    type: number
    sql: ${TABLE}.partition_key

  - dimension: postal_code
    type: string
    sql: ${TABLE}.postal_code

  - dimension: time_zone
    type: string
    sql: ${TABLE}.time_zone

  - dimension: type
    type: number
    sql: ${TABLE}.type

  - dimension: type_name
    type: string
    sql: ${TABLE}.type_name

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - dimension: web_browser
    type: string
    sql: ${TABLE}.web_browser

  - dimension: web_browser_name
    type: number
    sql: ${TABLE}.web_browser_name

  - dimension: web_browser_version
    type: number
    sql: ${TABLE}.web_browser_version

  - measure: count
    type: count
    drill_fields: [id, type_name, actor_name, affected_record_name, web_browser_name]

