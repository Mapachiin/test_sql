-- codigo para creacion de actividad final SQL
CREATE DATABASE ACTIVIDAD_FINAL;
GO
USE DATABASE ACTIVIDAD_FINAL;
GO

-- DE AQUI EN ADELANTE ES LA CREACION DE TABLAS
-- PUNTO 2 ACTIVIDAD

-- Tabla: Sucursal
CREATE TABLE Sucursal (
    SucursalID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL
);

-- Tabla: Asignación
CREATE TABLE Asignacion (
    AsignacionID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL
);

-- Tabla: Equipo
CREATE TABLE Equipo (
    CodigoInventario VARCHAR(50) PRIMARY KEY,
    Estado VARCHAR(50) NOT NULL,
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Procesador VARCHAR(100),
    RAM VARCHAR(20),
    DiscoDuro VARCHAR(20),
    SucursalID INT,
    AsignacionID INT,
    FOREIGN KEY (SucursalID) REFERENCES Sucursal(SucursalID),
    FOREIGN KEY (AsignacionID) REFERENCES Asignacion(AsignacionID)
);

-- Tabla: Software
CREATE TABLE Software (
    SoftwareID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Version VARCHAR(50),
    Tipo VARCHAR(50)
);

-- Tabla intermedia para relación N:M entre Equipo y Software
CREATE TABLE EquipoSoftware (
    EquipoID VARCHAR(50),
    SoftwareID INT,
    PRIMARY KEY (EquipoID, SoftwareID),
    FOREIGN KEY (EquipoID) REFERENCES Equipo(CodigoInventario),
    FOREIGN KEY (SoftwareID) REFERENCES Software(SoftwareID)
);

-- A PARTIR DE AQUI LA INSERCION DE DATOS
-- PUNTO 3
