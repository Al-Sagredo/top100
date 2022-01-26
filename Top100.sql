CREATE USER peliculas IDENTIFIED BY 123;
GRANT ALL PRIVILEGES TO peliculas;
CREATE TABLE peliculas (id number PRIMARY key, Pelicula varchar2(100), "A�o estreno" varchar2(25), Director varchar2(25)); 
CREATE TABLE reparto (id number, actor varchar2(50), FOREIGN KEY(id) REFERENCES peliculas(id));
--importa archivos en DBeaver
SELECT id FROM peliculas WHERE Pelicula='Titanic';
SELECT actor FROM reparto WHERE id=2;
SELECT count(id) AS total_harrison FROM reparto WHERE actor='Harrison Ford';
SELECT pelicula, "A�o estreno" FROM peliculas WHERE "A�o estreno" >'1989' AND "A�o estreno" <'2000' ORDER BY pelicula ASC;
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas;
SELECT max(LENGTH(pelicula)) AS Largo FROM peliculas;
