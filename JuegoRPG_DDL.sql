--Crear el esquema para el juego RPG
CREATE SCHEMA JuegoRPG;

--Tabla de Clases
CREATE TABLE JuegoRPG.Clases (
    ID INT PRIMARY KEY,
    NombreClase VARCHAR(50) NOT NULL UNIQUE,
    VidaBase INT NOT NULL,
    ManaBase INT NOT NULL,
    FuerzaBase INT NOT NULL,
);

--Tabla de personajes
CREATE TABLE JuegoRPG.Personajes (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombrePersonaje NVARCHAR(50) NOT NULL UNIQUE,
    Nivel INT NOT NULL,
    Vida INT NOT NULL,
    Inventario_ID INT NOT NULL,
    Clase_ID INT NOT NULL,
);

--Tabla de Habilidades
CREATE TABLE JuegoRPG.Habilidades (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombreHabilidad NVARCHAR(100) NOT NULL,
    ClaseH_ID INT NOT NULL,
    CostoMana INT NOT NULL,
    Efecto NVARCHAR(255) NOT NULL,
);

--Tabla de Items
CREATE TABLE JuegoRPG.Items (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombreItem NVARCHAR(100) NOT NULL,
    TipoItem NVARCHAR(50) NOT NULL,
    Descripcion NVARCHAR(255) NOT NULL,
);

--Tabla de Inventarios
CREATE TABLE JuegoRPG.Inventarios (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Capacidad INT NOT NULL,
    Item_ID INT NOT NULL,
);