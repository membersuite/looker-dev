- connection: production_redshift

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: audit_logs

- explore: audit_logs2

- explore: audit_logs_old

- explore: email_activities

- explore: emails

- explore: etl_job_history

- explore: invoice_business_units

- explore: invoice_item_snapshots

- explore: membership_snapshots

