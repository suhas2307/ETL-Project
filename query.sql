--- Joining all the 3 tables
SELECT o.movie,o.firstname,o.lastname,o.award,o.yearofaward,o.birthcountry,o.birthyear,o.biourl,cd.region,cd.incomelevel,cd.capital FROM oscar_awards o
INNER JOIN country_codes c ON
o.birthcountry = c.country
LEFT JOIN country_details cd ON
c.code = cd.countrycode
ORDER BY o.yearofaward DESC
;

--- Get the count of awards per income level
SELECT cd.incomelevel,count(*) Award_count FROM oscar_awards o
INNER JOIN country_codes c ON
o.birthcountry = c.country
LEFT JOIN country_details cd ON
c.code = cd.countrycode
GROUP BY cd.incomelevel
ORDER BY Award_count DESC
;
