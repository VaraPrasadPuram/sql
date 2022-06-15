Count the number of movies that Abigail Breslin was nominated for an oscar.

Table: oscar_nominees

year:
int
category:
varchar
nominee:
varchar
movie:
varchar
winner:
bool
id:
int

-- Solution:

select count(movie) 
from oscar_nominees
where nominee = 'Abigail Breslin';

