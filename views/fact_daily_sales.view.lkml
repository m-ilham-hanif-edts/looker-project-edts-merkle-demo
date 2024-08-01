view: fact_daily_sales {
  sql_table_name: `edts-merkle-demo.bi.fact_daily_sales` ;;

  dimension_group: dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: seller_id {
    type: number
    sql: ${TABLE}.seller_id ;;
  }
  dimension: val {
    type: number
    sql: ${TABLE}.val ;;
  }
  measure: count {
    type: count
  }
}
