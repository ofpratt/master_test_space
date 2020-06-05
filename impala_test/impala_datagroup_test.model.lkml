connection: "impala_test_jeremy"

include: "/impala_test/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: test_datagroup_OP_impala {
  sql_trigger: select hour(current_timestamp()) ;;
}

explore: order_items {
  join: orders {
    relationship: many_to_one
    sql_on: ${orders.id} = ${order_items.order_id} ;;
  }

  join: users {
    relationship: many_to_one
    sql_on: ${users.id} = ${orders.user_id} ;;
  }
  join: derived_table_op {
    relationship: one_to_one
    sql_on: ${derived_table_op.id} = ${users.id} ;;
  }
}
