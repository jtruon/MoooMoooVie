DELETE FROM `movies2017`.`movies_directors` WHERE `Movies_idMovies`='4' and`Directors_idDirectors`='4';
DELETE FROM `movies2017`.`directors` WHERE `idDirectors`='4';
SELECT D.idDirectors As Director_ID, D.name As Director_Name, D.about As Director_Bio, MD.Movies_idMovies AS Movie_ID,M.title AS Movie_Tittle
FROM movies2017.directors D 
JOIN movies2017.movies_directors MD ON D.idDirectors = MD.Directors_idDirectors
JOIN movies2017.movies M ON M.idMovies = MD.Movies_idMovies
ORDER BY D.idDirectors