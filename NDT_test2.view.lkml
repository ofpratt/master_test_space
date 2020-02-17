
view: NDT_test2 {
  derived_table: {
    explore_source: order_items {
      bind_all_filters: yes
      column: count {}
      column: id { field: orders.id }
      column: status { field: orders.status }
      column: brand { field: products.category }
    }
  }
  dimension: count {
    type: number
  }
  dimension: id {
    type: number
  }
  dimension: status {}
  dimension: brand {}
}
