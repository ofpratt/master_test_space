view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    html:
    {% if value == 'Intimates' %}
    <i>cis-Intimaterooni&nbsp</i>
    {% elsif value == 'Fashion Hoodies & Sweatshirts' %}
    <i>sweaty shirts and hoodies&nbsp</i>
    {% else %}
    {{rendered_value}}
    {% endif %};;
  }

  dimension: logo {
    type: string
    sql: ${category} ;;
    html:
        {% if category._value == 'Intimates'%}
        <img src = "https://images.madeiramadeira.com.br/banner/images/54545382-01-guardaroupa-160x160.png">
        {% elsif category._value == 'Accessories'%}
        <img src = "https://images.madeiramadeira.com.br/banner/images/91545942-04-cama-160x160.png">
        {% elsif category._value == 'Active'%}
        <img src = "https://images.madeiramadeira.com.br/banner/images/50546689-08-eletro-160x160.png">
        {% elsif category._value == 'Blazers & Jackets'%}
        <img src = "https://images.madeiramadeira.com.br/banner/images/60546822-09-decor-160x160.png">
        {% elsif category._value == 'Jumpsuits & Rompers'%}
        <img src = "https://images.madeiramadeira.com.br/banner/images/52546954-10-portas-e-janelas-160x160.png">
        {% else %}
        <img src = "https://images.gupy.io/unsafe/85x85/https://s3.amazonaws.com/gupy5/production/companies/336/career/281/images/logo.jpg">
        {% endif %} ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
