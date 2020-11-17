view: test_liquid {
  derived_table: {
    sql:
    select count(*) as count, id from
    (SELECT
  orders.id  AS `id`,
  orders.status  AS `status`,
  orders.user_id  AS `user_id`
FROM demo_db.orders  AS orders
where {{ _view._name }} <> " ") as subtable
group by 2 order by 1
;;
  }


  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  measure: count_of_count {
    type: count
  }

dimension: id {
  type: number
  sql: ${TABLE}.id
  ;;
}
}
