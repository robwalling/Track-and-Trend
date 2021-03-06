view: dim_risk_category {
  sql_table_name: dbo.DIM_RISK_CATEGORY ;;

  dimension: active_flag {
    type: string
    sql: ${TABLE}.ACTIVE_FLAG ;;
  }

  dimension_group: insert {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INSERT_DATE ;;
  }

  dimension: risk_cat_key {
    type: number
    sql: ${TABLE}.RISK_CAT_KEY ;;
  }

  dimension: risk_category_name {
    type: string
    sql: ${TABLE}.RISK_CATEGORY_NAME ;;
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDATE_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [risk_category_name]
  }
}
