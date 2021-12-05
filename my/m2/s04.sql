-- examples on filtered join
use hron;

-- join using
select r.name as region, c.name as country
from region r join country c
using (region_id)
where region_id = 1;

-- join on
select r.name as region, c.name as country
from region r join country c
on r.region_id = c.region_id
where r.region_id = 1;

-- "classic" join
select r.name as region, c.name as country
from region r, country c
where r.region_id = c.region_id and r.region_id = 1;
