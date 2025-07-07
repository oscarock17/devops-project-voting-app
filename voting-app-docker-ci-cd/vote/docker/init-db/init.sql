-- Crear base de datos votes
CREATE DATABASE votes;

-- Conectarse a votes y crear la tabla
\connect votes;

-- Crear tabla votes
CREATE TABLE IF NOT EXISTS votes (
  id VARCHAR(128) PRIMARY KEY,
  vote VARCHAR NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);