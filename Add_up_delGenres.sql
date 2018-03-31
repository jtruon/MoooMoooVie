DELETE FROM `movies2017`.`movies_genres` WHERE `Movies_idMovies`='4' and`Genres_idGenres`='101';
SELECT genres.idGenres, genres.name, movies_genres.Movies_idMovies, movies.title
FROM movies2017.genres
JOIN movies2017.movies_genres ON genres.idGenres = movies_genres.Genres_idGenres
JOIN movies2017.movies ON movies.idMovies = movies_genres.Movies_idMovies
ORDER BY genres.idGenres;