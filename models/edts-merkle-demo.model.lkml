# Connection
connection: "edts-merkle-demo"

# Datagroup
datagroup: datagroup__refresh_every_10min {
  max_cache_age: "1 minutes"
  interval_trigger: "10 minutes"
  label: "[Datagroup] Refresh Every 10min"
  description: "This datagroup will refresh all connected table every 10m."
}

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
