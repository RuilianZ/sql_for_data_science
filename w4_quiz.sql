/*All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.*/

/*Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together. Be sure to make a space in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA)
What is the city and country result for CustomerID 16?*/
select
customerid,
firstname,
lastname,
upper(city || ' ' || country) as city_country
from customers
where customerid = 16

/*Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. Make the new field lower case and pull each individual step to show your work.
What is the final result for Robert King?*/
select
firstname,
lastname,
lower(substr(firstname, 1, 4) || substr(lastname, 1, 2)) as newid
from employees
where firstname like 'robert' and lastname like 'king'

/*Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending.*/
select
lastname,
hiredate,
strftime('%Y', hiredate) as hireyear,
2021 - strftime('%Y', hiredate) as workyear
from employees
where workyear >= 15
order by lastname asc

/*Are there any columns with null values? Indicate any below. Select all that apply.*/
select *
from customers

/*Find the cities with the most customers and rank in descending order.
Which of the following cities indicate having 2 customers?*/
select
customerid,
city,
count(customerid) as customer_number
from customers
group by city
having customer_number = 2
order by customer_number desc

/*Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.
Select all of the correct "AstridGruber" entries that are returned in your results below.*/
select
i.invoiceid,
c.firstname,
c.lastname,
c.firstname || c.lastname || i.invoiceid as new_invoiceid
from customers c
left join invoices i on i.customerid = c.customerid
where new_invoiceid like ('AstridGruber%')
order by
c.firstname,
c.lastname,
i.invoiceid
