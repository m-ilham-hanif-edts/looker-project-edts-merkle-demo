
view: daily_trx_trend_value {
  sql_table_name: `ml.daily_trx_trend_value` ;;

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
