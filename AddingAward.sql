INSERT INTO `movies2017`.`awards` (`idAward`, `name`, `about`) VALUES ('8', 'AARP Movies for Grownups Awards', 'Best Supporting Actress\nLaurie Metcalf ');
INSERT INTO `movies2017`.`awards_movies` (`Award_idAward`, `Movies_idMovies`) VALUES ('7', '4');
INSERT INTO `movies2017`.`awards_movies` (`Award_idAward`, `Movies_idMovies`) VALUES ('8', '4');
SELECT awards.idAward AS Award_ID, awards.name AS Award_Name, awards_movies.Movies_idMovies AS Movie_ID, movies.title AS Movie_Tittle
FROM movies2017.awards 
JOIN movies2017.awards_movies ON awards.idAward = awards_movies.Award_idAward
JOIN movies2017.movies ON movies.idMovies = awards_movies.Movies_idMovies
ORDER BY movies.idMovies; 