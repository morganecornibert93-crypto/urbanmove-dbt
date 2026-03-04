SELECT
    nf.date,
    nf.id_groupoflines,
    g.nom_groupoflines,
    nf.id_titre,
    t.type_de_transport,
    t.categorie_titre,
    nf.nb_validation

FROM {{ ref('stg_nb_fer') }} nf

LEFT JOIN {{ ref('stg_id_groupoflines') }} g
ON nf.id_groupoflines = g.id_groupoflines

LEFT JOIN {{ ref('stg_titre_transport') }} t
ON nf.id_titre = t.id_titre
