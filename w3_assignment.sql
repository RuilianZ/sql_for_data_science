/*All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.*/


/*Using a subquery, find the names of all the tracks for the album "Californication".*/
select t.name
from tracks t
where t.albumid =  (select a.albumid
from albums a
where a.title = 'Californication')

/*Find the total number of invoices for each customer along with the customer's full name, city and email.*/
select
c.firstname,
c.lastname,
c.city,
c.email,
count(i.invoiceid) as n
from customers c
left join invoices i on i.customerid = c.customerid
group by c.customerid

/*Retrieve the track name, album, artistID, and trackID for all the albums.*/
select
a.artistid,
a.title,
a.artistid,
t.name,
t.trackid
from albums a
left join tracks t on t.albumid = a.albumid
