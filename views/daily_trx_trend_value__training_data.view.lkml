
view: daily_trx_trend_value__training_data {
  derived_table: {
    explore_source: daily_trx_trend_value__dataset {
      column: dt {}
      column: value {}
      filters: [
        daily_trx_trend_value__dataset.dt: "before 2024/04/01"
      ]
    }
  }

  dimension: dt {
    type: date
    datatype: date
    sql: ${TABLE}.dt ;;
  }

  measure: value {
    type: sum
    sql: ${TABLE}.value ;;
  }

  set: detail {
    fields: [
      dt
    ]
  }
}
