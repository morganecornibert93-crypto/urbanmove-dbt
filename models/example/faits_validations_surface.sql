SELECT
    ns.date,
    ns.id_groupoflines,
    g.nom_groupoflines,
    ns.id_titre,
    t.type_de_transport,
    t.categorie_titre,
    ns.nb_validation

FROM {{ ref('stg_nb_surface') }} ns

LEFT JOIN {{ ref('stg_id_groupoflines') }} g
ON ns.id_groupoflines = g.id_groupoflines

LEFT JOIN {{ ref('stg_titre_transport') }} t
ON ns.id_titre = t.id_titre
