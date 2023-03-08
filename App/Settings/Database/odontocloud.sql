CREATE DATABASE IF NOT EXISTS odontocloud DEFAULT CHARACTER SET utf8mb4 COLLATE uft8mb4_unicode_ci;
USE odontocloud;
CREATE TABLE IF NOT EXISTS oc_funcionarios(
    login_funcionario         VARCHAR(15)  NOT NULL UNIQUE,
    senha_funcionario         VARCHAR(32)  NOT NULL,
    avatar_funcionario        VARCHAR(64),
    ultimo_acesso_funcionario VARCHAR(32)  NOT NULL,
    status_funcionario        VARCHAR(15)  NOT NULL,
    matricula_funcionario     INT NOT NULL AUTO_INCREMENT DEFAULT 1000 PRIMARY KEY ,
    nome_funcionario          VARCHAR(128) NOT NULL,
    departamento_funcionario  VARCHAR(32)  NOT NULL,
    funcao_funcionario        VARCHAR(128) NOT NULL,
    celular1_funcionario      VARCHAR(11)  NOT NULL,
    celular2_funcionario      VARCHAR(11),
    email_funcionario         VARCHAR(128) NOT NULL,
    comissao_funcionario      FLOAT        NOT NULL
);

CREATE TABLE IF NOT EXISTS oc_dentistas(
    login_dentista            VARCHAR(15)  NOT NULL UNIQUE,
    senha_dentista            VARCHAR(32)  NOT NULL,
    avatar_dentista           VARCHAR(64),
    ultimo_acesso_dentista    VARCHAR(32)  NOT NULL,
    status_dentista           VARCHAR(15)  NOT NULL,
    matricula_dentista        INT NOT NULL AUTO_INCREMENT DEFAULT 2000 PRIMARY KEY,
    nome_dentista             VARCHAR(128) NOT NULL,
    departamento_dentista     VARCHAR(32)  NOT NULL,
    funcao_dentista           VARCHAR(128) NOT NULL,
    celular1_dentista         VARCHAR(11)  NOT NULL,
    celular2_dentista         VARCHAR(11),
    email_dentista            VARCHAR(128) NOT NULL,
    cro_dentista              VARCHAR(10)  NOT NULL,
    cro_uf_dentista           VARCHAR(2)   NOT NULL,
    cro_tipo_dentista         VARCHAR(12)  NOT NULL,
    cro_data_emissao_dentista VARCHAR(8)   NOT NULL,
    comissao_dentista         FLOAT        NOT NULL
);