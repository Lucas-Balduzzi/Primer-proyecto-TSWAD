CREATE TABLE IF NOT EXISTS Perro  (
	ID_Perro INT NOT NULL auto_increment,
    Nombre VARCHAR (50) NOT NULL,
    Fecha_nac DATE,
    Sexo VARCHAR (20),
    DNI_dueno INT NOT NULL,
    PRiMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
    );
    
INSERT INTO Perro (Nombre,DNI_dueno)
VALUES ("Rocco",20220713,"Macho",31222333);

INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion)
VALUES (31222333,"Pedro","Gonzalez",1136888444,"Cabo 122");

SELECT h.Fecha,p.Nombre FROM Historial h JOIN Perro p WHERE h.Fecha < 20141001 AND h.Perro = p.ID_Perro;
DELETE FROM Perro WHERE ID_Perro = 9;

UPDATE Perro SET Fecha_nac = '2021-03-17' WHERE ID_Perro = 6;

SELECT p.Nombre FROM Perro p  JOIN Historial h WHERE h.Fecha > '2022-00-00' AND p.ID_Perro = h.Perro;

SELECT h.Monto FROM Historial h WHERE h.Fecha BETWEEN '2022-07-01' AND '2022-07-31';

INSERT INTO Historial (Fecha,Perro,Descripcion,Monto)
VALUES ('2022-07-27',10,'Baño',3200);

TRUNCATE Historial;

SELECT p.Nombre FROM Perro p WHERE p.Sexo = "Macho" AND p.Fecha_nac BETWEEN '2020-01-01' AND '2022-12-31';