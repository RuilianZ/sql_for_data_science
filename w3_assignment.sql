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
t.name,
t.trackid
from albums a
left join tracks t on t.albumid = a.albumid

/*Retrieve a list with the managers last name, and the last name of the employees who report to him or her.*/
select
a.lastname as managerlastname,
b.lastname as empoyeelastname
from employees a
inner join employees b
on a.employeeid = b.reportsto

/*Find the name and ID of the artists who do not have albums.*/
select
a.name,
a.artistid
fromartists a
left join albums al
on al.artistid = a.artistid
where al.albumid is null

/*Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.*/
select
lastname
from employees
union
select
lastname
from customers
order by lastname desc

/*See if there are any customers who have a different city listed in their billing city versus their customer city.*/
select
c.city,
i.billingcity
from customers c
left join invoices i
on c.customerid = i.customerid
where c.city <> i.billingcity
