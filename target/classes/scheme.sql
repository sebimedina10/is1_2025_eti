-- Elimina la tabla 'users' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS users;

-- Crea la tabla 'users' con los campos originales, adaptados para SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Clave primaria autoincremental para SQLite
    name TEXT NOT NULL UNIQUE,          -- Nombre de usuario (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    password TEXT NOT NULL           -- Contraseña hasheada (TEXT es el tipo de cadena recomendado para SQLite)
);      

-- Elimina la tabla 'docentes' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS docentes;
-- Crea la tabla 'docentes' con los campos originales, adaptados para SQLite.
CREATE TABLE docentes (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    dni INTEGER NOT NULL UNIQUE, 
    apellido TEXT NOT NULL, -- Nombre de la persona (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    nombre TEXT NOT NULL,  -- Apellido de la persona.
    email TEXT NOT NULL UNIQUE, --direccion de correo eléctronico
    CHECK(dni>0)  
);
