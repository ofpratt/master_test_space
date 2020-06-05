view: derived_table_op {
    derived_table: {
      explore_source: order_items {
        column: id { field: users.id }
        column: created_month { field: users.created_month }
        column: count { field: orders.count }
      }
      datagroup_trigger: test_datagroup_OP_impala
    }
    dimension: id {
      type: number
    }
    dimension: created_month {
      type: date_month
    }
    dimension: count {
      type: number
    }
  }
