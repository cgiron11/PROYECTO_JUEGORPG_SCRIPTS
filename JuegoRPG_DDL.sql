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
    Inventario_ID INT NOT NULL,
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
    TipoItem NVARCHAR(50) NOT NULL,
    Descripcion NVARCHAR(500) NOT NULL,
);

--Tabla de Inventarios
CREATE TABLE JuegoRPG.Inventarios (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Capacidad INT NOT NULL,
    Item_ID INT NOT NULL,
    Equipado BIT NOT NULL DEFAULT 0
);

---LLAVES FORANEAS---
--Tabla de personajes
ALTER TABLE JuegoRPG.Personajes
ADD CONSTRAINT FK_Personajes_Clases FOREIGN KEY (Clase_ID) REFERENCES JuegoRPG.Clases(ID);
ALTER TABLE JuegoRPG.Personajes
ADD CONSTRAINT FK_Personajes_Inventarios FOREIGN KEY (Inventario_ID) REFERENCES JuegoRPG.Inventarios(ID);
--Tabla de Habilidades
ALTER TABLE JuegoRPG.Habilidades
ADD CONSTRAINT FK_Habilidades_Clases FOREIGN KEY (Clase_ID) REFERENCES JuegoRPG.Clases(ID);
--Tabla de Inventarios
ALTER TABLE JuegoRPG.Inventarios
ADD CONSTRAINT FK_Inventarios_Items FOREIGN KEY (Item_ID) REFERENCES JuegoRPG.Items(ID);