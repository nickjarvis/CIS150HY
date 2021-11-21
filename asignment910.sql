--Problem 1

--INSERT into Movie VALUES (4846340, 'Hidden Figures' , 2016 , 'PG' , 127 , 'BDH' , NULL );

--info CREATE TABLE Actor (actor_id CHAR(7), movie_id CHAR(7), PRIMARY KEY (actor_id, movie_id), FOREIGN KEY (actor_id) REFERENCES Person(id), FOREIGN KEY (movie_id) REFERENCES Movie(id))

--INSERT into Actor VALUES( '0378245' , '4846340' );
--INSERT into Actor VALUES( '0818055' , '4846340' );
--INSERT into Actor VALUES( '1847117' , '4846340' );

--SELECT id 
--from Person 
--WHERE name in ("Taraji P. Henson","Octavia Spencer" , "Janelle Monae" );

--SELECT actor_id
--from Actor
--where movie_id = 4846340;

--Problem 2

--SELECT earnings_rank ,rating,runtime
--FROM Movie
--WHERE name = 'Incredibles 2'

--Problem 3

--SELECT name , pob ,dob as name
--from Person
--WHERE name is  'Melissa McCarthy' or name is 'Lady Gaga' ;

--problem 4

--SELECT name , year
--from Movie
--where rating is 'G' and year  >= 2010 ;

--problem 5

--SELECT avg (earnings_rank) as 'average earnings rank '
--from Movie
--where rating is 'G'

--problem 6

--SELECT  year , count(year) AS 'oscarsayear'
---from Oscar
--group by year 
--HAVING count(year) != 6
--ORDER by year DESC;

--problem 7

--select name, min (runtime)
--from Movie
--where name like '%Star Wars%' 





 








