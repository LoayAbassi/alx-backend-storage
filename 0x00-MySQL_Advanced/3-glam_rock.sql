-- lists bands with glam rock as style,
-- ordered by longevity

select 
band_name, coalesce(split,2022) - formed as lifespan
from metal_bands
where style like '%Glam rock%'
order by lifespan;