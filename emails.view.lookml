- view: emails
  sql_table_name: public.emails
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: body
    type: string
    sql: ${TABLE}.body

  - dimension: challenge
    type: yesno
    sql: ${TABLE}.challenge

  - dimension: clicked_through
    type: yesno
    sql: ${TABLE}.clicked_through

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: do_not_email
    type: yesno
    sql: ${TABLE}.do_not_email

  - dimension: duplicate
    type: yesno
    sql: ${TABLE}.duplicate

  - dimension: email_address
    type: string
    sql: ${TABLE}.email_address

  - dimension: email_blast_id
    type: string
    sql: ${TABLE}.email_blast_id

  - dimension: error
    type: yesno
    sql: ${TABLE}.error

  - dimension: hard_bounce
    type: yesno
    sql: ${TABLE}.hard_bounce

  - dimension: key
    type: number
    sql: ${TABLE}.key

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: opened
    type: yesno
    sql: ${TABLE}.opened

  - dimension: opt_out
    type: yesno
    sql: ${TABLE}.opt_out

  - dimension: out_of_office
    type: yesno
    sql: ${TABLE}.out_of_office

  - dimension: partition_key
    type: number
    sql: ${TABLE}.partition_key

  - dimension: recipient_id
    type: string
    sql: ${TABLE}.recipient_id

  - dimension: recipient_name
    type: string
    sql: ${TABLE}.recipient_name

  - dimension: sent
    type: yesno
    sql: ${TABLE}.sent

  - dimension: soft_bounce
    type: yesno
    sql: ${TABLE}.soft_bounce

  - dimension: spam
    type: yesno
    sql: ${TABLE}.spam

  - dimension: suppressed
    type: yesno
    sql: ${TABLE}.suppressed

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension: unsubscribed
    type: yesno
    sql: ${TABLE}.unsubscribed

  - measure: count
    type: count
    drill_fields: [id, name, recipient_name]

