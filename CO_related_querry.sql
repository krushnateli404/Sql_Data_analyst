SELECT *FROM movies WHERE release_year IN ((SELECT min(release_year) FROM movies) , (SELECT max(release_year) FROM movies ))


SELECT * FROM movies WHERE imdb_rating > (SELECT AVG(imdb_rating)FROM movies)

select avg(imdb_rating) FROM movies


2) select all the rows from movies table whose imdb_rating is higher than the average rating

	select * from movies 
	where imdb_rating >  
        (select avg(imdb_rating) from movies);
        

1) select all the movies with minimum and maximum release_year. Note that there 
can be more than one movies in min and max year hence output rows can be more than 2

	select * from movies where release_year in (
        (select min(release_year) from movies),
		(select max(release_year) from movies)
	)
