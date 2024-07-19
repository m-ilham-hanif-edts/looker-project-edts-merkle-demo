# Connection
connection: "edts-merkle-demo"

# Datagroup
datagroup: daily_trx_trend_value__model__datagroup {
  interval_trigger: "30 seconds"
  max_cache_age: "10 seconds"
}

persist_with: daily_trx_trend_value__model__datagroup

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
