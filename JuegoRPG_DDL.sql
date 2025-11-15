--Crear el esquema para el juego RPG
CREATE SCHEMA JuegoRPG;

--Tabla de Clases
CREATE TABLE JuegoRPG.Clases (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombreClase VARCHAR(50) NOT NULL UNIQUE,
    Descripcion NVARCHAR(500) NOT NULL
);

--Tabla de personajes
CREATE TABLE JuegoRPG.Personajes (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombrePersonaje NVARCHAR(50) NOT NULL UNIQUE,
    Nivel INT NOT NULL,
    Vida INT NOT NULL,
    Clase_ID INT NOT NULL
);

--Tabla de Habilidades
CREATE TABLE JuegoRPG.Habilidades (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombreHabilidad NVARCHAR(100) NOT NULL,
    Clase_ID INT NOT NULL,
    CostoMana INT NOT NULL,
    Efecto NVARCHAR(255) NOT NULL
);

--Tabla de Items
CREATE TABLE JuegoRPG.Items (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombreItem NVARCHAR(100) NOT NULL,
);
;
--Tabla de Inventarios
CREATE TABLE JuegoRPG.Inventarios (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombreInventario NVARCHAR(100)
);

--Tabla de ASIGNACION
CREATE TABLE JuegoRPG.Asigno (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Inventario_ID INT NOT NULL,
    Item_ID INT NOT NULL,
    Personaje_ID INT NOT NULL,
);

---LLAVES FORANEAS---
--Tabla de personajes
ALTER TABLE JuegoRPG.Personajes
ADD CONSTRAINT FK_Personajes_Clases FOREIGN KEY (Clase_ID) REFERENCES JuegoRPG.Clases(ID);
--Tabla de Habilidades
ALTER TABLE JuegoRPG.Habilidades
ADD CONSTRAINT FK_Habilidades_Clases FOREIGN KEY (Clase_ID) REFERENCES JuegoRPG.Clases(ID);
--Tabla de ASIGNACION
ALTER TABLE JuegoRPG.Asigno
ADD CONSTRAINT FK_Asigno_Inventarios FOREIGN KEY (Inventario_ID) REFERENCES JuegoRPG.Inventarios(ID);
ALTER TABLE JuegoRPG.Asigno
ADD CONSTRAINT FK_Asigno_Items FOREIGN KEY (Item_ID) REFERENCES JuegoRPG.Items(ID);
ALTER TABLE JuegoRPG.Asigno
ADD CONSTRAINT FK_Asigno_Personajes FOREIGN KEY (Personaje_ID) REFERENCES JuegoRPG.Personajes(ID);
-- Constraint para evitar que el mismo personaje tenga el mismo item duplicado en el mismo inventario
ALTER TABLE JuegoRPG.Asigno
ADD CONSTRAINT UQ_Asigno_Inventario_Item_Personaje UNIQUE (Inventario_ID, Item_ID, Personaje_ID);