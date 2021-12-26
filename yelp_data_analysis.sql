Part 1

1.
select
count (*)
from attribute

2.
select
count(distinct id)
from business

3.
select id
, name, review_count, yelping_since, useful, funny, cool, fans, average_stars
, compliment_hot, compliment_more, compliment_profile, compliment_cute, compliment_list, compliment_note, compliment_plain, compliment_cool, compliment_funny, compliment_writer, compliment_photos
from user
where id = NULL or name = NULL or review_count = NULL or yelping_since = NULL or useful = NULL or funny = NULL or cool = NULL or fans= NULL or average_stars= NULL or compliment_hot= NULL or compliment_more= NULL or compliment_profile= NULL or compliment_cute= NULL or compliment_list= NULL or compliment_note= NULL or compliment_plain = NULL or compliment_cool= NULL or compliment_funny= NULL or compliment_writer= NULL or compliment_photos= NULL

4.
select
min(stars) as minimun,
max(stars) as maximum,
avg(stars) as average
from review

5.
