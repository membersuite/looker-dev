- view: invoice_business_units
  sql_table_name: public.invoice_business_units
  fields:

  - dimension: business_unit_id
    type: string
    sql: ${TABLE}.business_unit_id

  - dimension: invoice_id
    type: string
    sql: ${TABLE}.invoice_id

  - dimension: partition_key
    type: number
    sql: ${TABLE}.partition_key

  - measure: count
    type: count
    drill_fields: []

