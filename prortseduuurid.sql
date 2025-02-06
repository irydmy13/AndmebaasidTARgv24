CREATE DATABASE procTARgv24;

USE procTARgv24;
CREATE TABLE uudised(
uudisID int PRIMARY KEY  identity(1,1),
uudiseTEEMA varchar(50),
kuupaev date,
autor varchar(25),
kirjeldus text
)
SELECT*FROM uudised;
INSERT INTO uudised(uudiseTeema, kuupaev, autor, kirjeldus)
VALUES(
'udune ilm', '2025-02-06', 'postimees', 'Lounani fog')
--protseduuri loomine
--sisestab uudised tabelisse ja kohe naitab
CREATE PROCEDURE lisaUudis
@uusTeema varchar(50),
@paev date,
@autor varchar(20),
@kirjeldus text
AS
BEGIN
INSERT INTO uudised(uudiseTeema, kuupaev, autor, kirjeldus)
VALUES(
@uusTeema, @paev, @autor, @kirjeldus);
SELECT * FROM uudised;
END;

--kutse
EXEC lisaUudis 'windows 11', '2025-02-06', 'õpetaja Pant', 'win11 ei tööta multimeedia klassis';
--teine kutse voimalus
EXEC lisaUudis
@uusTeema= '1.marts on juba kevad',
@paev='2025-02-06',
@autor='test',
@kirjeldus='puudub';

-- protseduur, mis kustutamine tabelist ID järgi
CREATE PROCEDURE kustutaUudis
@id int
AS
BEGIN
SELECT *FROM uudised;
DELETE FROM uudised WHERE uudisID=@id;
SELECT * FROM uudised;
END;
--kutse
EXEC kustutaUudis 3;
EXEC kustutaUudis @id=3;
