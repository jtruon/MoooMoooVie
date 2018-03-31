DELETE FROM `movies2017`.`awards_movies` WHERE `Award_idAward`='8' and`Movies_idMovies`='4';
SELECT awards.idAward AS Award_ID, awards.name AS Award_Name, awards_movies.Movies_idMovies AS Movie_ID, movies.title AS Movie_Tittle
FROM movies2017.awards 
JOIN movies2017.awards_movies ON awards.idAward = awards_movies.Award_idAward
JOIN movies2017.movies ON movies.idMovies = awards_movies.Movies_idMovies
ORDER BY movies.idMovies;