DELETE FROM `movies2017`.`movies_company` WHERE `Movies_idMovies`='4' and`Company_idCompany`='108';
DELETE FROM `movies2017`.`company` WHERE `idCompany`='108';
SELECT company.idCompany as Company_ID, company.name as Company_name, movies_company.Movies_idMovies as Movie_ID, movies.title as Movie_tittle
FROM movies2017.company
JOIN movies2017.movies_company ON  company.idCompany = movies_company.Company_idCompany
JOIN movies2017.movies	ON movies.idMovies = movies_company.Movies_idMovies
ORDER BY company.idCompany;