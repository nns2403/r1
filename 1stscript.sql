SELECT country , COUNT(*) AS number
FROM person p 
GROUP by country 
ORDER by number DESC 


SELECT "bitrh_year " , COUNT(*) AS number
FROM person p 
GROUP by "bitrh_year " 
ORDER by "bitrh_year "   


SELECT "first show" , COUNT(*) AS number
FROM production p 
GROUP by "first show" 
ORDER by "first show"


SELECT fk_producer, p2.full_name, count(*) number,
FROM production p 
JOIN person p2 on p2.pk_person = fk_producer
GROUP by fk_producer 
ORDER by number DESC ;


SELECT fk_producer, p2.full_name, count(*) number, 
                MIN(CAST(p."first show" as text)) min_year, MAX(CAST(p."first show" as text)) max_year
FROM production p
        JOIN person p2 on p2.pk_person = p.fk_producer 
group by fk_producer 
ORDER by number DESC ;


SELECT fk_producer, count(*) AS number, MIN(p."first show"), MAX(p."first show")
FROM production p
GROUP BY fk_producer ;


SELECT fk_organization, o.name, o."type", count(*) AS number, MIN(p."first show"), MAX(p."first show")
FROM production p
        JOIN organization o ON o.pk_organization = p.fk_organization 
GROUP BY fk_organization ;






