SELECT
    lo.id_ligne,
    l.nom_ligne,
    l.mode_transport,
    o.operatorref AS id_operateur,
    o.operatorname AS nom_operateur,
    o.logo

FROM {{ ref('stg_ligne_operateur') }} lo

LEFT JOIN {{ ref('stg_lignes') }} l
ON lo.id_ligne = l.id_ligne

LEFT JOIN {{ ref('stg_liste_transporteurs') }} o
ON lo.id_operateur = o.operatorref
