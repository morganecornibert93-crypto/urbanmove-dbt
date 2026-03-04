SELECT
    la.id_ligne,
    l.nom_ligne,
    l.mode_transport,
    la.id_arret,
    a.nom_arret,
    a.latitude,
    a.longitude,
    a.niveau_accessibilite

FROM {{ ref('stg_ligne_arret') }} la

LEFT JOIN {{ ref('stg_lignes') }} l
ON la.id_ligne = l.id_ligne

LEFT JOIN {{ ref('stg_arrets') }} a
ON la.id_arret = a.id_arret
