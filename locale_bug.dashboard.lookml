- dashboard: test_op
  title: test op
  layout: newspaper
  elements:
  - name: ''
    type: text
    body_text: |-
      <div class="vis">
      <div class="vis-single-value">
      <font color="#5A2FC2" size="3"><center>If we keep typing will the text wrap at 500px or will it go across the entire tile? This type of example may take a test on your instance to confirm</center></font>
      </div>
      </div>
    row: 14
    col: 8
    width: 9
    height: 6
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: 212711_project_import_a
      explore: order_items
      type: table
      fields: [order_items.count, products.department, products.item_name]
      sorts: [order_items.count desc, products.department]
      limit: 500
      query_timezone: UTC
      hidden_fields: []
      y_axes: []
    - model: 212711_project_import_a
      explore: inventory_items
      type: looker_grid
      fields: [inventory_items.product_id, inventory_items.cost, products.category,
        products.item_name]
      sorts: [inventory_items.product_id]
      limit: 500
      query_timezone: UTC
      series_types: {}
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: products.item_name
        source_field_name: products.item_name
    type: looker_grid
    series_types: {}
    hidden_fields: []
    y_axes: []
    pivots: [products.department]
    listen:
    - Untitled Filter: inventory_items.cost
    - Untitled Filter: inventory_items.cost
    row: 6
    col: 0
    width: 24
    height: 8
  - name: New Tile 1
    title: New Tile 1
    merged_queries:
    - model: 212711_project_import_a
      explore: order_items
      type: table
      fields: [order_items.count, products.department, products.item_name]
      sorts: [order_items.count desc, products.department]
      limit: 500
      query_timezone: UTC
      hidden_fields: []
      y_axes: []
    - model: 212711_project_import_a
      explore: inventory_items
      type: looker_grid
      fields: [inventory_items.product_id, inventory_items.cost, products.category,
        products.item_name]
      sorts: [inventory_items.product_id]
      limit: 500
      query_timezone: UTC
      series_types: {}
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: products.item_name
        source_field_name: products.item_name
    type: looker_grid
    series_types: {}
    pinned_columns:
      inventory_items.product_id: left
    hidden_fields: []
    y_axes: []
    pivots: [products.department]
    listen:
    - Untitled Filter: inventory_items.cost
      Untitled Filter 2: inventory_items.product_id
    - Untitled Filter: inventory_items.cost
      Untitled Filter 2: inventory_items.product_id
    row: 0
    col: 8
    width: 16
    height: 6
  - name: freeze bug
    title: freeze bug
    merged_queries:
    - model: 212711_project_import_a
      explore: order_items
      type: table
      fields: [order_items.count, products.department, products.item_name]
      sorts: [order_items.count desc, products.department]
      limit: 500
      query_timezone: UTC
      hidden_fields: []
      y_axes: []
    - model: 212711_project_import_a
      explore: inventory_items
      type: looker_grid
      fields: [inventory_items.product_id, inventory_items.cost, products.category,
        products.item_name]
      sorts: [inventory_items.product_id]
      limit: 500
      query_timezone: UTC
      series_types: {}
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: products.item_name
        source_field_name: products.item_name
    type: looker_grid
    series_types: {}
    hidden_fields: []
    y_axes: []
    pinned_columns:
      products.category: left
    pivots: [products.department]
    listen:
    - Untitled Filter: inventory_items.cost
      Untitled Filter 2: inventory_items.id
    - Untitled Filter: inventory_items.cost
      Untitled Filter 2: inventory_items.id
    row: 0
    col: 0
    width: 8
    height: 6
  - name: testyrooooo
    title: testyrooooo
    model: op_test_space
    explore: users
    type: looker_grid
    fields: [users.country, users.id]
    sorts: [users.country]
    limit: 500
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_text_format:
      users.country:
        italic: true
        bold: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    row: 14
    col: 0
    width: 8
    height: 6
  - title: table jank
    name: table jank
    model: i__looker
    explore: history
    type: looker_grid
    fields: [look.id, look.link, look.public_slug, look.count]
    sorts: [look.count desc]
    limit: 500
    query_timezone: UTC
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      look.count:
        is_active: true
    series_text_format:
      look.link:
        bold: true
        italic: true
      look.id:
        bold: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_font_color: "#ff2f1f"
    header_background_color: "#5746ff"
    header_text_alignment: right
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#81BE56",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: a77d2b8b-ee06-4086-8459-cfff9cccb2d2, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 20
    col: 0
    width: 8
    height: 6
  filters:
  - name: Untitled Filter
    title: Untitled Filter
    type: number_filter
    default_value: ">20"
    allow_multiple_values: true
    required: false
  - name: Untitled Filter 2
    title: Untitled Filter 2
    type: number_filter
    default_value: ">25"
    allow_multiple_values: true
    required: false
