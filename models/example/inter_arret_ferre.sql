SELECT
    af.id_arret,
    a.nom_arret,
    a.latitude,
    a.longitude,
    rf.ida,
    rf.categorie_jour,
    rf.heure,
    rf.pourcentage_val

FROM {{ ref('stg_arret_ferre') }} af

LEFT JOIN {{ ref('stg_arrets') }} a
ON af.id_arret = a.id_arret

LEFT JOIN {{ ref('stg_profil_fer') }} rf
ON af.ida = rf.ida
