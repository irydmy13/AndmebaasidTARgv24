CREATE DATABASE AndmebaasDmytrenko;


USE AndmebaasDmytrenko;
CREATE TABLE film(
filmID int PRIMARY KEY identity(1,1),
filmNimetus varchar(30) not null,
aasta int, 
eelarveHind decimal(7,1)
);
SELECT * FROM film;

--tabeli kustutamine
DROP TABLE film;
