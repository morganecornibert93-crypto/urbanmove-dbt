SELECT
    CAST(stop_point_id AS INT64) AS stop_point_id,
    CAST(accessibility_level_id AS INT64) AS accessibility_level_id,
    accessibility_level_name
FROM `urbanmove-489008.UrbanMove_raw.accessibilite_gare`
