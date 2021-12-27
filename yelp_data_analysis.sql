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
select
city,
review_count
from business
order by review_count desc

6.
select
stars,
count(stars) as count
from business
where city = 'Avon'
group by stars

7.
select
stars,
count(stars) as count
from business
where city = 'Beachwood'
group by stars

8.
select
name,
review_count,
fans
from user
order by review_count desc

9.
select
count as love_count
from review
where text like '%love%'

select
count(text) as hate_count
from review
where text like '%hate%'

10.
select
name,
fans
from user
order by fans desc
limit 10
