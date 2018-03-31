INSERT INTO `movies2017`.`stars` (`idStars`, `name`, `about`) VALUES ('10', 'Saoirse Ronan', 'Saoirse Una Ronan was born in The Bronx, New York City, New York, United States, to Irish parents, Monica Ronan (née Brennan) and Paul Ronan, an actor. When Saoirse was three, the family moved back to Dublin, Ireland. Saoirse grew up in Dublin and briefly in Co. Carlow before moving back to Dublin with her parents.');
INSERT INTO `movies2017`.`movies_stars` (`Movies_idMovies`, `Stars_idStars`, `character`) VALUES ('4', '10', 'Lady Bird McPherson');
SELECT S.idStars As Star_ID, S.name As Star_Name, S.about As Director_Bio, MS.Movies_idMovies AS Movie_ID, M.title AS Movie_Tittle
FROM movies2017.stars S 
JOIN movies2017.movies_stars MS ON S.idStars = MS.Stars_idStars
JOIN movies2017.movies M ON M.idMovies = MS.Movies_idMovies
ORDER BY S.idStars