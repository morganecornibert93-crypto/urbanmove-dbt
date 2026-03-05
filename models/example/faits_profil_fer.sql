select
    annee,
    semestre,
    id_zdc,
    cat_jour,
    heure,
    pourcentage_validations
from {{ ref('stg_profil_fer_clean') }};
