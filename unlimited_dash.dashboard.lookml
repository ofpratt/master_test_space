- dashboard: unlimited_download
  title: unlimited download
  layout: newspaper
  elements:
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: 221815_tier_sorting_repro
      explore: inventory_items
      type: table
      fields: [products.id, products.rank, products.retail_price]
      sorts: [products.id desc]
      limit: 1000
      query_timezone: UTC
      join_fields: []
    - model: 212711_project_import_a
      explore: inventory_items
      type: table
      fields: [inventory_items.id, inventory_items.count]
      sorts: [inventory_items.id desc]
      limit: 1000
      query_timezone: UTC
      join_fields:
      - field_name: inventory_items.id
        source_field_name: products.id
    type: table
    row: 0
    col: 4
    width: 15
    height: 11
