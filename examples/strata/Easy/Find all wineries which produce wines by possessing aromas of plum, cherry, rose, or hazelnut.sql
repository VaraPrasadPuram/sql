Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut. To make it more simple, look only for singular form of the mentioned aromas. 
Output unique winery values only.

Table: winemag_p1

winemag_p1

id:
int
country:
varchar
description:
varchar
designation:
varchar
points:
int
price:
float
province:
varchar
region_1:
varchar
region_2:
varchar
variety:
varchar
winery:
varchar

-- Solution:

select distinct(winery) 
from winemag_p1
where description like '%plum%'
or description like '%cherry%'
or description like '%rose%'
or description like '%hazelnut%'
group by 1;

