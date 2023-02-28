CREATE DATABASE IF NOT EXISTS odontocloud DEFAULT CHARACTER SET utf8mb4 COLLATE uft8mb4_unicode_ci;
USE odontocloud;
CREATE TABLE IF NOT EXISTS oc_usuarios(
    login_usuario         VARCHAR(15) NOT NULL UNIQUE,
    senha_usuario         VARCHAR(32) NOT NULL,
    vinculo_usuario       VARCHAR(15) NOT NULL,
    ultimo_acesso_usuario VARCHAR(32),
    status_usuario        VARCHAR(15) NOT NULL
);
CREATE TABLE IF NOT EXISTS oc_funcionarios(
    matricula_funcionario  INT NOT NULL UNIQUE PRIMARY KEY DEFAULT 100,
    nome_funcionario       VARCHAR(150) NOT NULL
)