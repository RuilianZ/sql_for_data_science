/*Practice Quiz - Writing Queries*/

/*All of the questions in this
quiz pull from the open source Chinook Database. Please refer to the ER Diagram below and familiarize yourself with the table and
column names to write accurate queries and get the appropriate
answers.*/


/*1.How many albums does the artist Led Zeppelin
have?*/

select
count(albumid) as n
from albums
where artistid in (select artistid
from artists
where name = 'Led Zeppelin')
