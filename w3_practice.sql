/*Practice Quiz - Writing Queries*/

/*All of the questions in this
quiz pull from the open source Chinook Database. Please refer to the ER Diagram below and familiarize yourself with the table and
column names to write accurate queries and get the appropriate
answers.*/


/*How many albums does the artist Led Zeppelin
have?*/
select
count(albumid) as n
from albums
where artistid in (select artistid
from artists
where name = 'Led Zeppelin')

/*Create a list of album titles and the unit prices for the artist "Audioslave".*/
SELECT a.Title, t.UnitPrice
FROM Albums a
INNER JOIN Tracks t ON a.AlbumId = t.AlbumId
INNER JOIN Artists ar ON ar.ArtistID = a.ArtistID
WHERE ar.Name = 'Audioslave'

/*Find the first and last name of any customer who
does not have an invoice. Are there any customers returned from the query?*/
select c.firstname, c.lastname, i.invoiceid
from customers c
left join invoices i on c.customerid = i.customerid
where i.invoiceid = null

/*Find the total price for each album. What is the total price for the album “Big Ones”?*/
select
a.title,
sum(t.unitprice)
from tracks t
inner join albums a on a.albumid = t.albumid
where a.title = 'Big Ones'
group by t.albumid

/*How many records are created when you apply a Cartesian join to the invoice and invoice items table?*/
select count(*) as total_records
from invoices
cross join invoice_items
