SELECT
    SAFE_CAST(stop_point_id AS INT64) AS stop_point_id,
    SAFE_CAST(accessibility_level_id AS INT64) AS accessibility_level_id,
    accessibility_level_name
FROM `urbanmove-489008.urbanmove_raw.accessibilite_gare`
