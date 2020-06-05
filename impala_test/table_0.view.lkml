view: table_0 {
  sql_table_name: looker_test.table_0 ;;
  suggestions: no

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: string
    sql: ${TABLE}.y ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
