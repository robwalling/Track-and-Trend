view: area_occured {
    sql_table_name: dbo.DIM_AREA ;;

    dimension: active_flag {
      type: string
      sql: ${TABLE}.ACTIVE_FLAG ;;
    }

    dimension: area_key {
      type: number
      sql: ${TABLE}.AREA_KEY ;;
    }

    dimension: area_name {
      type: string
      sql: ${TABLE}.AREA_NAME ;;
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
      drill_fields: [area_name]
    }
  }