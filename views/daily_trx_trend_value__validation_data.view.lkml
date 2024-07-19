
view: daily_trx_trend_value__validation_data {
  derived_table: {
    explore_source: daily_trx_trend_value {
      column: dt {}
      column: value {}
      filters: [
        daily_trx_trend_value.dt: "after 2019/01/01"
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
