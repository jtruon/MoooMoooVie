DELETE FROM `movies2017`.`region_movies` WHERE `region_idRegion`='6' and`movies_idMovies`='4';
DELETE FROM `movies2017`.`region` WHERE `idRegion`='6';
SELECT region.idRegion as Region_ID, region.name as Region_name, region_movies.movies_idMovies as Movie_ID, movies.title as Movie_tittle
FROM movies2017.region
JOIN movies2017.region_movies ON region.idRegion = region_movies.region_idRegion
JOIN movies2017.movies ON movies.idMovies = region_movies.region_idRegion
ORDER BY region.idRegion;