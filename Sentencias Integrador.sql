CREATE TABLE IF NOT EXISTS Perro  (
	ID_Perro INT NOT NULL auto_increment,
    Nombre VARCHAR (50),
    Fecha_nac DATE,
    Sexo VARCHAR (20),
    DNI_dueno INT NOT NULL,
    PRiMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
    );
    
INSERT INTO Perro (Nombre,DNI_dueno)
VALUES ("Rocco",20220713,"Macho",31222333);
SELECT h.Fecha,p.Nombre FROM Historial h JOIN Perro p WHERE h.Fecha < 20170101 AND h.Perro = p.ID_Perro;
DELETE FROM Perros WHERE ID_Perro = 11;
UPDATE Perros SET Fecha_nac = 20210317 WHERE ID_Perro = 3;
SELECT p.Nombre FROM Perro p JOIN Dueno d WHERE d.Nombre = "Pedro" AND p.DNI_dueno = d.DNI;
SELECT p.Nombre FROM Perro p JOIN Historial h WHERE h.Fecha > 20220101;
SELECT h.Monto FROM Historial h WHERE h.Fecha BETWEEN 20220701 AND 20220731;
INSERT INTO Historial (Fecha,Perro,Descripcion,Monto)
VALUES (20220813,10,"Croquetas",1300);
UPDATE Dueno SET Direccion = "Libertad 123" WHERE DNI = 45888777;
