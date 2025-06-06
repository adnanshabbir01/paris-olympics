-- Finding number of athletes from each country.
select country, count(name) as no_of_participants from athletes group by country order by no_of_participants desc; 

-- Which events had the highest number of participants?
select disciplines, events, count(name) as no_of_participants from athletes group by disciplines, events order by no_of_participants desc;

-- List the top athletes with the most medals.
select name, country, count(medal_type) as total_medals from medallists group by name, country order by total_medals desc;

-- What is the gender distribution of athletes per country?
select t.country,
       count(case when t.gender = 'Male' then 1 end) as male_athletes,
       count(case when t.gender = 'Female' then 1 end) as female_athletes,
       count(case when t.gender = 'Team' then 1 end) as team
from (select name, country,
       case
           when events like '%Men%' then 'Male'
           when events like '%Women%' then 'Female'
           when events like '%Team%' then 'Team'
           else 'Unknown'
       end as gender
from athletes)t
group by t.country
order by male_athletes desc, female_athletes desc, team desc;