INSERT INTO `movies2017`.`movies` (`idMovies`, `title`, `year`, `runtime`, `imdb-rating`, `metascore`, `description`, `gross`) VALUES ('32', 'I, Tonya', '1/19/2018', '120', '7.6', '77', 'Competitive ice skater Tonya Harding rises amongst the ranks at the U.S. Figure Skating Championships, but her future in the activity is thrown into doubt when her ex-husband intervenes.', '29916390');
UPDATE `movies2017`.`movies` SET `title`='I, ' WHERE `idMovies`='32';
DELETE FROM `movies2017`.`movies` WHERE `idMovies`='32';
SELECT * FROM movies;