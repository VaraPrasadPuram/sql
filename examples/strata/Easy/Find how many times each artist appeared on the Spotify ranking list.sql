Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.

Table: spotify_worldwide_daily_song_ranking

spotify_worldwide_daily_song_ranking

id:
int
position:
int
trackname:
varchar
artist:
varchar
streams:
int
url:
varchar
date:
datetime
region:
varchar

-- Solution:

select artist, count(artist) as n_occurrences
from spotify_worldwide_daily_song_ranking
group by 1
order by 2 desc;