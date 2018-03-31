INSERT INTO `movies2017`.`region` (`idRegion`, `name`) VALUES ('6', 'German');
INSERT INTO `movies2017`.`region_movies` (`region_idRegion`, `movies_idMovies`) VALUES ('1', '4');
INSERT INTO `movies2017`.`region_movies` (`region_idRegion`, `movies_idMovies`) VALUES ('6', '4');
SELECT region.idRegion as Region_ID, region.name as Region_name, region_movies.movies_idMovies as Movie_ID, movies.title as Movie_tittle
FROM movies2017.region
JOIN movies2017.region_movies ON region.idRegion = region_movies.region_idRegion
JOIN movies2017.movies ON movies.idMovies = region_movies.region_idRegion
ORDER BY region.idRegion;