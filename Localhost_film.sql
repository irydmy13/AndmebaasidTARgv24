CREATE TABLE film(
fiml_ID int PRIMARY KEY AUTO_INCREMENT, 
film_nimetus varchar(30) not null,
aasta int, 
eelarve_hind decimal(7,1)
);

INSERT INTO film(film_nimetus, aasta, eelarve_hind)
VALUES('BabyShark', 2022, 20520.5),
('Babygirl', 2024, 555555.5),
('Riply', 2024, 22000.5),
('Barby', 2023, 10000.7);

CREATE TABLE zanr(
zanr_ID int PRIMARY KEY AUTO_INCREMENT,
zanr_nimetus varchar(20) UNIQUE
);

INSERT INTO zanr(zanr_nimetus)
VALUES('draama'), ('detektiiv'), ('perefilm'), ('armastus'), ('komedia')

ALTER TABLE film ADD zanr_ID int;

ALTER TABLE film ADD CONSTRAINT fk_zanr
FOREIGN KEY (zanr_ID) REFERENCES zanr(zanr_ID);

UPDATE film SET zanr_ID=3 WHERE fiml_ID=1
UPDATE film SET zanr_ID=2 WHERE fiml_ID=2
UPDATE film SET zanr_ID=4 WHERE fiml_ID=3
UPDATE film SET zanr_ID=1 WHERE fiml_ID=4
