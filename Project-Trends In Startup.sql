--1. Getting started, take a look at the startups table:

select * from startups;

-- 2. Calculate the total number of companies in the table.

select count(*) as 'companies'
from startups;


-- 3.We want to know the total value of all companies in this table.Calculate this by getting the SUM() of the valuation column.


select sum(valuation)
from startups;

--4.What is the highest amount raised by a startup?Return the maximum amount of money raised.


select name, max(raised) from startups;

--5.Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.

select name , max(raised)
from startups
where stage = 'Seed';

--6. In what year was the oldest company on the list founded?

select name , min(founded) as 'oldest_company'
from startups;

--Let's find out the valuations among different sectors:

--7.Return the average valuation.

select avg(valuation) from startups;

--8.Return the average valuation, in each category.

select category,avg(valuation) as 'avg_valuation'
from startups
group by category;

--9.Return the average valuation, in each category.Round the averages to two decimal places.

select category,
round(avg(valuation),2) 'rounded_valuation'
from startups
group by category;

--10.Return the average valuation, in each category.Round the averages to two decimal places.Lastly, order the list from highest averages to lowest.

SELECT category, 
ROUND(AVG(valuation), 2) as 'rounded_evaluation'
FROM startups
GROUP BY category
ORDER BY rounded_evaluation DESC;

--11.First, return the name of each category with the total number of companies that belong to it.

select category , count(*) 
from startups 
group by category;

--12.Next, filter the result to only include categories that have more than three companies in them.What are the most competitive markets?

select category, count(*)'total_no_of_comps'
from startups 
group by category
having count(*) > 3
order by 2  desc;

-- Let's see if there's a difference in startups sizes among different locations:

-- 13.What is the average size of a startup in each location?

select name , avg(employees), location
from startups
group by location;

--14.What is the average size of a startup in each location, with average sizes above 500?

select name , avg(employees),location
from startups
group by location
having avg(employees) > 500;

