- view: etl_job_history
  sql_table_name: public.etl_job_history
  fields:

  - dimension_group: date_last_ran
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_last_ran

  - dimension: job_name
    type: string
    sql: ${TABLE}.job_name

  - dimension: run_id
    type: number
    sql: ${TABLE}.run_id

  - measure: count
    type: count
    drill_fields: [job_name]

