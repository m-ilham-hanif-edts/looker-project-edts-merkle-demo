
view: daily_trx_trend_value {
  sql_table_name: `ml.daily_trx_trend_value` ;;
  # derived_table: {
  #   sql: SELECT dt, RAND() * 100 value
  #     FROM UNNEST(GENERATE_DATE_ARRAY(DATE("2015-01-01"), DATE("2019-12-31"), INTERVAL 1 DAY)) dt ;;
  # }

  measure: count {
    type: count
    drill_fields: [detail*]
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
