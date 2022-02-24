----------------------------------------------
-- HOMEWORK SOLUTION -------------------------
----------------------------------------------
select * 
from Madrid_Airbnb_V3
WHERE (neighbourhood_group='Centro' or neighbourhood_group='Retiro') and room_type='Private room' and (price>=25 and price<=50)

select * 
from Madrid_Airbnb_V3
WHERE neighbourhood_group in ('Centro','Latina')  and room_type='Private room' and (price>=25 and price<=50)

---------------------------------------------
--BETWEEN------------------------------------
---------------------------------------------
select id_airbnb,
	   neighbourhood_group,
       price
from Madrid_Airbnb_V3
WHERE price>=30 and price<=70

select id_airbnb,
	   neighbourhood_group,
       price
from Madrid_Airbnb_V3
WHERE price BETWEEN 30 AND 70


select id_airbnb,
	   neighbourhood_group,
       price
from Madrid_Airbnb_V3
WHERE price>30 and price<70

select id_airbnb,
	   neighbourhood_group,
       price
from Madrid_Airbnb_V3
WHERE price BETWEEN 31 AND 69

#This works
select neighbourhood_group
FROM Madrid_Airbnb_V3
WHERE neighbourhood_group BETWEEN ' Latina' AND 'Retiro'

#This doesnt work --> Consider alphabetical order. 
select neighbourhood_group
FROM Madrid_Airbnb_V3
WHERE neighbourhood_group BETWEEN ' Latina' AND 'Retiro'

---------------------------------------------
--LIKE---------------------------------------
---------------------------------------------
SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE 'Gran%';

SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE 'Gran%';

SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE '%gran';

SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE '%cozy%';

SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE '%co_y%';


SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE '%co__y%';

SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE '%%%';

SELECT id_airbnb,
	   name, 
       neighbourhood_group,
       price
from Madrid_Airbnb_V3
where name LIKE '%\%%' ESCAPE "\";

SELECT name, 
	   substring(name,1,3),
       neighbourhood_group
FROM Madrid_Airbnb_V3
WHERE neighbourhood_group= "Centro";








       
