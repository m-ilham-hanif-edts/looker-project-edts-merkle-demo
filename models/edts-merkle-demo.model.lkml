# Connection
connection: "edts-merkle-demo"

# Datagroup
datagroup: datagroup__daily_trx_trend_value__model {
  max_cache_age: "24 hours"
  interval_trigger: "60 seconds"
  # sql_trigger: SELECT max(dt) from `ml.daily_trx_trend_value`;;
  label: "Re"
  description: "Recreate table when newer date is available, or every 60s."
}
persist_with: datagroup__daily_trx_trend_value__model

# datagroup: datagroup__trigger_daily {
#   sql_trigger: SELECT "datagroup__trigger_daily";;
#   max_cache_age: "24 hours"
# }
# persist_with: datagroup__trigger_daily

# Explore (data model)
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: daily_trx_trend_value {
  from: daily_trx_trend_value
}

explore: daily_trx_trend_value__training_data {
  from: daily_trx_trend_value__training_data
}

explore: daily_trx_trend_value__validation_data {
  from: daily_trx_trend_value__validation_data
}

explore: daily_trx_trend_value__prediction_result {
  from: daily_trx_trend_value__prediction_result
}
