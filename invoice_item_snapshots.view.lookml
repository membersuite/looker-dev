- view: invoice_item_snapshots
  sql_table_name: public.invoice_item_snapshots
  fields:

  - dimension: age
    type: number
    sql: ${TABLE}.age

  - dimension: ar_gl_account
    type: string
    sql: ${TABLE}.ar_gl_account

  - dimension: balance_due
    type: number
    sql: ${TABLE}.balance_due

  - dimension: batch_id
    type: string
    sql: ${TABLE}.batch_id

  - dimension: batch_name
    type: string
    sql: ${TABLE}.batch_name

  - dimension: batch_status
    type: number
    sql: ${TABLE}.batch_status

  - dimension: business_unit_id
    type: string
    sql: ${TABLE}.business_unit_id

  - dimension: currency_code
    type: string
    sql: ${TABLE}.currency_code

  - dimension: customer_id
    type: string
    sql: ${TABLE}.customer_id

  - dimension: customer_name
    type: string
    sql: ${TABLE}.customer_name

  - dimension: customer_number
    type: number
    sql: ${TABLE}.customer_number

  - dimension: customer_type
    type: string
    sql: ${TABLE}.customer_type

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension_group: invoice
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.invoice_date

  - dimension_group: invoice_due
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.invoice_due_date

  - dimension: invoice_id
    type: string
    sql: ${TABLE}.invoice_id

  - dimension: invoice_number
    type: number
    sql: ${TABLE}.invoice_number

  - dimension: partition_key
    type: number
    sql: ${TABLE}.partition_key

  - dimension: pro_forma
    type: yesno
    sql: ${TABLE}.pro_forma

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: product_name
    type: string
    sql: ${TABLE}.product_name

  - dimension: revenue_gl_account
    type: string
    sql: ${TABLE}.revenue_gl_account

  - measure: count
    type: count
    drill_fields: [customer_name, product_name, batch_name]

