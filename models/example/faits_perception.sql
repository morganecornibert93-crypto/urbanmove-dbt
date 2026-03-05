select
    groupoperateur,
    mode,
    annee,
    resultat
from {{ ref('stg_indicateurs_perception') }};
