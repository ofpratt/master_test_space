connection: "thelook"
#this is a comment yeah

# include all the views
include: "*.view"
include: "*.dashboard"
include: "test.test_test.lkml"

datagroup: op_test_space_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: op_test_space_default_datagroup

explore: connection_reg_r3 {}

explore: derived_test_table_3_20190510 {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }
  join: NDT_test1 {
    type: left_outer
    sql_on: ${NDT_test1.id} = ${orders.id} ;;
    relationship: one_to_one
  }
  join: NDT_test2 {
    type: left_outer
    sql_on: ${orders.id} = ${NDT_test2.id} ;;
    relationship: one_to_one
  }
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join: derived_table {
    relationship: one_to_one
    sql_on: ${derived_table.id} = orders.${orders.id} ;;
  }
}

explore: products {}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: users_nn {}

explore: zozo_table_20190507 {}

explore: zozo_table_20190508 {}

explore: zozo_table_null {}
