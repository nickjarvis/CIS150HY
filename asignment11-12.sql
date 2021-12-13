--Problem 1: A famous Terrier
--Before you continue, make sure to review the procedures above.

--The actress Geena Davis is an alumna of Boston University (SFA '79). Write a query to determine the names of the movies from our database in which she appeared, 
--as well as the years in which those movies were produced. The result of the query should be tuples of the form (movie name, year).

--SELECT id
--from Person 
--WHERE name = 'Geena Davis';
--SELECT movie_id
--from Actor
--WHERE actor_id = '0000133' ;
--SELECT name , year
--from Movie
--WHERE id is  '0094606' or id is '0164912' ;

--Problem 2: Runtimes of R-rated movies
--Write a query to determine the shortest runtime, the longest runtime, and the average runtime of all movies in the database that have an R rating. 
--The result of the query should be a single tuple consisting of the three numbers we are looking for. Make sure that they appear in the correct order: shortest, longest, average.

--SELECT  min (runtime) as 'shortest' , max (runtime) as 'longest' , avg (runtime) as 'average'
--from Movie
--where rating is 'R' ;

--Problem 3: Spielberg Oscars
--Steven Spielberg has been frequently been nominated for a best director Oscar. 
--Write a query to determine the type and year of any Oscars that Spielberg has actually won, along with the name(s) of the movie(s) for which he won. 
--The result should be tuples of the form (Oscar type, year won, movie name).


--SELECT id
--FROM Person
--WHERE name = 'Steven Spielberg' ;

--SELECT type , year ,  ((SELECT name FROM Movie as movie_id where movie_id = id ))
--from Oscar
--where person_id = '0000229' ;

--Problem 4: Common POBs
--Find all places of birth shared by at least 50 of the people in the database. Your query should exclude the value of NULL (which indicates an unknown place of birth) from the results. 
--The result of the query should be tuples of the form (pob, number of people).

--SELECT pob, count(POB) total
--from Person
--GROUP BY pob 
--HAVING count (POB) >= 50 ;

--SELECT count(name) COUNT  
--FROM Movie
--WHERE id NOT IN (SELECT movie_id FROM Oscar )

--Problem 6: Actors from Sweden
--There are a number of people in the database who were born in Sweden – some actors and some directors. 
--Write a query that lists, for each person born in Sweden, the number of movies in which that person acted. 
--The result of the query should be tuples of the form (person name, number of movies acted) given in decreasing order based on the number of movies. 
--When there is a tie for a given number of movies, list the actors who share that count in alphabetical order (i.e., in increasing order by name).
 
--SELECT name , ((SELECT id FROM movie where id = id ))
--FROM Person
--WHERE pob like '%Sweden%' ;

--Problem 7: Directors of R-rated movies
--Write a query to determine the number of people who have directed one or more of the movies in the database with an R rating. 
--The result of the query should be a single number.

--SELECT count (*)
--from Movie
--where rating = 'R' ;

--Problem 8: Changing a movie's rating
--The PG-13 rating was created in 1984 in response to concerns by parents that some movies with PG ratings were inappropriate for children. 
--One of those movies was the initial movie from the Indiana Jones series, which was released in that year. 
--The movie is already in our database, and it was never officially re-rated. Write a single SQL command that changes the rating of this movie to PG-13.

--UPDATE Movie SET id = '0087469' , column2 = 'Indiana Jones and the Temple of Doom' , column3 = 1984 , column4 = 'PG-13' , column5 = 118 , column6 = 'AV' , column7 = NULL  ;

--UPDATE Movie SET ("id", "name", "year", "rating", "runtime", "genre", "earnings_rank") VALUES ('0087469', 'Indiana Jones and the Temple of Doom', '1984', 'PG-13', '118', 'AV', '');

--INSERT INTO "main"."Movie" ("id", "name", "year", "rating", "runtime", "genre", "earnings_rank") VALUES ('0087469', 'Indiana Jones and the Temple of Doom', '1984', 'PG-13', '118', 'AV', '');


 