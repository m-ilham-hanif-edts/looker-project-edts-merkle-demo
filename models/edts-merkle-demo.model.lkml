# Connection
connection: "edts-merkle-demo"

# Datagroup
datagroup: datagroup__trigger_10s {
  sql_trigger: SELECT "datagroup__trigger_10s";;
  max_cache_age: "10 seconds"
}
persist_with: datagroup__trigger_10s

datagroup: datagroup__trigger_daily {
  sql_trigger: SELECT "datagroup__trigger_daily";;
  max_cache_age: "24 hours"
}
persist_with: datagroup__trigger_daily

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
