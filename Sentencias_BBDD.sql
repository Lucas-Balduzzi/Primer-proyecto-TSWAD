CREATE TABLE IF NOT EXISTS Perro  (
	ID_Perro INT NOT NULL auto_increment,
    Nombre VARCHAR (50),
    Fecha_nac DATE,
    Sexo VARCHAR (20),
    DNI_dueno INT NOT NULL,
    PRiMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
    );

INSERT INTO `peluqueria_canina`.`dueno`
(`DNI`,`Nombre`,`Apellido`,`Telefono`,`Direccion`)
VALUES (22968515,'Oscar','Garcia',4611204,'San Martin 156');

INSERT INTO `peluqueria_canina`.`perro`
(`Nombre`,`Fecha_nac`,`Sexo`,`DNI_dueno`)
VALUES ('Panchita','2014-09-06','Hembra',22968515);

SELECT p.Nombre FROM Perro p INNER JOIN Dueno d WHERE d.Nombre = "Pedro" AND p.DNI_dueno = d.DNI;

UPDATE Dueno SET Direccion = "Libertad 123" WHERE DNI = 10333512;

SELECT d.DNI, d.Nombre, d.Apellido, p.Nombre, p.Fecha_Nac FROM DUENO AS d 
INNER JOIN PERRO AS p ON d.DNI=P.DNI_Dueno 
INNER JOIN HISTORIAL AS h ON p.ID_Perro=h.Perro 
WHERE p.Fecha_Nac > '2018-08-14' AND  h.Fecha < '2022-01-01'; 

