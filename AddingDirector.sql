INSERT INTO `directors` (`idDirectors`,`name`,`about`) VALUES (4,'Greta Gerwig','Greta Gerwig is an American actress, playwright, screenwriter, and director. She has collaborated with Noah Baumbach on several films, including Greenberg (2010), Frances Ha (2012), for which she earned a Golden Globe nomination, and Mistress America (2015). Gerwig made her solo directorial debut with the critically acclaimed comedy-drama film Lady Bird (2017), which she also wrote, and has also had starring roles in the films Damsels in Distress (2011), Jackie (2016), and 20th Century Women (2016).');
INSERT INTO `movies_directors` (`Movies_idMovies`,`Directors_idDirectors`) VALUES (4,4);
/*SELECT D.idDirectors As Director_ID, D.name As Director_Name, D.about As Director_Bio, MD.Movies_idMovies AS Movie_ID,M.title AS Movie_Tittle
FROM movies2017.directors AS D, 
movies2017.movies_directors AS MD,
movies2017.movies AS M
WHERE D.idDirectors = MD.Directors_idDirectors
AND M.idMovies = MD.Movies_idMovies;*/
SELECT D.idDirectors As Director_ID, D.name As Director_Name, D.about As Director_Bio, MD.Movies_idMovies AS Movie_ID,M.title AS Movie_Tittle
FROM movies2017.directors D 
JOIN movies2017.movies_directors MD ON D.idDirectors = MD.Directors_idDirectors
JOIN movies2017.movies M ON M.idMovies = MD.Movies_idMovies
ORDER BY D.idDirectors