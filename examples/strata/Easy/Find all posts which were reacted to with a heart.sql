Find all posts which were reacted to with a heart.

Tables: facebook_reactions, facebook_posts

facebook_reactions

poster:
int
friend:
int
reaction:
varchar
date_day:
int
post_id:
int

facebook_posts

post_id:
int
poster:
int
post_text:
varchar
post_keywords:
varchar
post_date:
datetime

-- Solution:

select distinct p.*
from facebook_posts p
inner join facebook_reactions r 
on p.post_id = r.post_id 
and r.reaction = 'heart';

