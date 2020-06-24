view: NDT_test1 {
  derived_table: {
    explore_source: order_items {
       bind_all_filters: yes
      column: count {}
      column: id { field: orders.id }
      column: status { field: orders.status }
      column: brand { field: products.brand }
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
