select *
from seeds inner join
	garden_bed on seeds.plant_id = garden_bed.plant_id;
    
select *
from seeds left join
	garden_bed on seeds.plant_id = garden_bed.plant_id
union
select *
from seeds right join
	garden_bed on seeds.plant_id = garden_bed.plant_id;
    
SELECT plant_name
FROM plant
INNER JOIN
	(SELECT seeds.plant_id FROM seeds 
		INNER JOIN garden_bed ON seeds.plant_id=garden_bed.plant_id) AS planted_plants 
        ON plant.plant_id=planted_plants.plant_id;