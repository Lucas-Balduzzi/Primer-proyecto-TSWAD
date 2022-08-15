CREATE DATABASE IF NOT EXISTS peluqueria_canina DEFAULT CHARACTER SET UTF8MB4;
USE peluqueria_canina;
CREATE TABLE IF NOT EXISTS Dueno (
    DNI INT NOT NULL,
    Nombre VARCHAR (50) NOT NULL,
    Apellido VARCHAR (50) NOT NULL,
    Telefono INT,
    Direccion VARCHAR (50),
    PRIMARY KEY (DNI));
CREATE TABLE IF NOT EXISTS Perro (
    ID_Perro INT NOT NULL auto_increment,
    Nombre VARCHAR (50) NOT NULL,
    Fecha_nac DATE,
    Sexo VARCHAR (50),
    DNI_dueno INT NOT NULL,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI));
CREATE TABLE IF NOT EXISTS Historial (
	ID_Historial INT NOT NULL auto_increment,
    Fecha DATE,
    Perro INT,
    Descripcion VARCHAR (255),
    Monto INT,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro));
    
INSERT INTO Perro (Nombre,Fecha_nac,Sexo,DNI_dueno) 
	VALUES (
	("Jade",22/03/2021,"Hembra",36574555));


