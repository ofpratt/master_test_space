- dashboard: test_sa_lookml
  title: test sa lookml
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: test sa lookml
    name: test sa lookml
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_job_stage.started_hour_of_day, scheduled_job_stage.started_day_of_week,
      scheduled_job_stage.avg_runtime, scheduled_job.count]
    pivots: [scheduled_job_stage.started_day_of_week]
    fill_fields: [scheduled_job_stage.started_hour_of_day, scheduled_job_stage.started_day_of_week]
    filters: {}
    sorts: [scheduled_job_stage.started_day_of_week 0, scheduled_job_stage.started_hour_of_day]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    series_labels:
      scheduled_job_stage.avg_runtime: Average Time in Queue
    series_cell_visualizations:
      scheduled_job_stage.avg_runtime:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#7d218f",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: middle}, max: {type: maximum}}, mirror: true,
            reverse: true, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [scheduled_job_stage.avg_runtime]}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: c092bb30-8fdb-9ce9-1a95-deab2cb82f73, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#d10a1b", offset: 100}]},
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: middle},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [scheduled_job.count]}]
    truncate_column_names: false
    series_types: {}
    defaults_version: 1
    listen:
      Stage: scheduled_job_stage.stage
      Created Date: scheduled_job.created_date
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 7 days ago for 7 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: system__activity
    explore: scheduled_plan
    listens_to_filters: []
    field: scheduled_job.created_date
  - name: Stage
    title: Stage
    type: field_filter
    default_value: '"enqueue_for_execute"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: scheduled_plan
    listens_to_filters: []
    field: scheduled_job_stage.stage
