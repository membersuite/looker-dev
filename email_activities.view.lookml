- view: email_activities
  sql_table_name: public.email_activities
  fields:

  - dimension: activity
    type: string
    sql: ${TABLE}.activity

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: email_address
    type: string
    sql: ${TABLE}.email_address

  - dimension: email_blast_id
    type: string
    sql: ${TABLE}.email_blast_id

  - dimension: ip_address
    type: string
    sql: ${TABLE}.ip_address

  - dimension: key
    type: number
    sql: ${TABLE}.key

  - dimension: link
    type: string
    sql: ${TABLE}.link

  - dimension: message_id
    type: string
    sql: ${TABLE}.message_id

  - dimension: partition_key
    type: number
    sql: ${TABLE}.partition_key

  - dimension: recipient_id
    type: string
    sql: ${TABLE}.recipient_id

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - measure: count
    type: count
    drill_fields: []

