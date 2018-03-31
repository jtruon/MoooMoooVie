UPDATE `movies2017`.`stars` SET `name`='Saoirse ' WHERE `idStars`='10';
SELECT S.idStars As Star_ID, S.name As Star_Name, S.about As Director_Bio, MS.Movies_idMovies AS Movie_ID, M.title AS Movie_Tittle
FROM movies2017.stars S 
JOIN movies2017.movies_stars MS ON S.idStars = MS.Stars_idStars
JOIN movies2017.movies M ON M.idMovies = MS.Movies_idMovies
ORDER BY S.idStars