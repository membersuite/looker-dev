- view: membership_snapshots
  sql_table_name: public.membership_snapshots
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: approved
    type: yesno
    sql: ${TABLE}.approved

  - dimension_group: billed_thru
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.billed_thru

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension_group: date_approved
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date_approved

  - dimension: date_key
    type: number
    sql: ${TABLE}.date_key

  - dimension: days_since_join_date
    type: number
    sql: ${TABLE}.days_since_join_date

  - dimension: days_since_last_reinstatement
    type: number
    sql: ${TABLE}.days_since_last_reinstatement

  - dimension: days_since_last_renewal
    type: number
    sql: ${TABLE}.days_since_last_renewal

  - dimension: days_since_termination
    type: number
    sql: ${TABLE}.days_since_termination

  - dimension: days_until_expiration
    type: number
    sql: ${TABLE}.days_until_expiration

  - dimension: do_not_renew
    type: yesno
    sql: ${TABLE}.do_not_renew

  - dimension_group: expiration
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.expiration_date

  - dimension: expired_this_month
    type: yesno
    sql: ${TABLE}.expired_this_month

  - dimension: expired_this_week
    type: yesno
    sql: ${TABLE}.expired_this_week

  - dimension: expired_this_year
    type: yesno
    sql: ${TABLE}.expired_this_year

  - dimension: expired_today
    type: yesno
    sql: ${TABLE}.expired_today

  - dimension: in_grace_period
    type: yesno
    sql: ${TABLE}.in_grace_period

  - dimension: is_expired
    type: yesno
    sql: ${TABLE}.is_expired

  - dimension: is_inherited
    type: yesno
    sql: ${TABLE}.is_inherited

  - dimension: is_terminated
    type: yesno
    sql: ${TABLE}.is_terminated

  - dimension_group: join
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.join_date

  - dimension: membership_organization_id
    type: string
    sql: ${TABLE}.membership_organization_id

  - dimension: new_this_month
    type: yesno
    sql: ${TABLE}.new_this_month

  - dimension: new_this_week
    type: yesno
    sql: ${TABLE}.new_this_week

  - dimension: new_this_year
    type: yesno
    sql: ${TABLE}.new_this_year

  - dimension: new_today
    type: yesno
    sql: ${TABLE}.new_today

  - dimension: owner_id
    type: string
    sql: ${TABLE}.owner_id

  - dimension: parent_membership_id
    type: string
    sql: ${TABLE}.parent_membership_id

  - dimension: partition_key
    type: number
    sql: ${TABLE}.partition_key

  - dimension: primary_chapter_id
    type: string
    sql: ${TABLE}.primary_chapter_id

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: receives_member_benefits
    type: yesno
    sql: ${TABLE}.receives_member_benefits

  - dimension: referrer_id
    type: string
    sql: ${TABLE}.referrer_id

  - dimension: reinstated_this_month
    type: yesno
    sql: ${TABLE}.reinstated_this_month

  - dimension: reinstated_this_week
    type: yesno
    sql: ${TABLE}.reinstated_this_week

  - dimension: reinstated_this_year
    type: yesno
    sql: ${TABLE}.reinstated_this_year

  - dimension: reinstated_today
    type: yesno
    sql: ${TABLE}.reinstated_today

  - dimension_group: reinstatement
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.reinstatement_date

  - dimension_group: reminded_thru
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.reminded_thru

  - dimension_group: renewal
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.renewal_date

  - dimension: renewed_this_month
    type: yesno
    sql: ${TABLE}.renewed_this_month

  - dimension: renewed_this_week
    type: yesno
    sql: ${TABLE}.renewed_this_week

  - dimension: renewed_this_year
    type: yesno
    sql: ${TABLE}.renewed_this_year

  - dimension: renewed_today
    type: yesno
    sql: ${TABLE}.renewed_today

  - dimension: status_id
    type: string
    sql: ${TABLE}.status_id

  - dimension: terminated_this_month
    type: yesno
    sql: ${TABLE}.terminated_this_month

  - dimension: terminated_this_week
    type: yesno
    sql: ${TABLE}.terminated_this_week

  - dimension: terminated_this_year
    type: yesno
    sql: ${TABLE}.terminated_this_year

  - dimension: terminated_today
    type: yesno
    sql: ${TABLE}.terminated_today

  - dimension_group: termination
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.termination_date

  - dimension: termination_reason_id
    type: string
    sql: ${TABLE}.termination_reason_id

  - dimension: type_id
    type: string
    sql: ${TABLE}.type_id

  - measure: count
    type: count
    drill_fields: [id]

