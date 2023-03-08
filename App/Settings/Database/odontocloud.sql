CREATE DATABASE IF NOT EXISTS odontocloud DEFAULT CHARACTER SET utf8mb4 COLLATE uft8mb4_unicode_ci;
USE odontocloud;

CREATE TABLE IF NOT EXISTS oc_pacientes(
	codigo_paciente            		 	  INT          NOT NULL AUTO_INCREMENT DEFAULT 3000 PRIMARY KEY,
	nome_paciente              		 	  VARCHAR(128) NOT NULL,
	cpf_paciente               		 	  VARCHAR(11)  NOT NULL UNIQUE,
	data_nascimento_paciente         	  VARCHAR(8)   NOT NULL, 
	genero_paciente                       VARCHAR(32)  NOT NULL,
	cep_paciente               		 	  VARCHAR(8)   NOT NULL,
	endereco_paciente                	  VARCHAR(128) NOT NULL,
	endereco_complemento_paciente    	  VARCHAR(128),
	bairro_paciente					 	  VARCHAR(128) NOT NULL,
	cidade_paciente                  	  VARCHAR(128) NOT NULL,
	uf_paciente						 	  VARCHAR(2)   NOT NULL,
	pais_paciente                    	  VARCHAR(32)  NOT NULL,
	telefone1_paciente                    VARCHAR(11)  NOT NULL,
	telefone2_paciente               	  VARCHAR(11),
	email_paciente                   	  VARCHAR(128) NOT NULL,
	convenio_paciente                	  VARCHAR(64)  NOT NULL,
	convenio_numero_paciente         	  VARCHAR(64),
	convenio_titular_paciente        	  VARCHAR(64),
	nome_responsavel_paciente        	  VARCHAR(64),
	cpf_responsavel_paciente         	  VARCHAR(11),
	grau_responsavel_paciente        	  VARCHAR(32),
	data_nascimento_responsavel_paciente  VARCHAR(8),
	nome_emergencia_paciente         	  VARCHAR(64),
	telefone_emergencia_paciente     	  VARCHAR(11),
	data_cadastro_paciente           	  VARCHAR(8)   NOT NULL
);

CREATE TABLE IF NOT EXISTS oc_dentistas(
    login_dentista             VARCHAR(15)  NOT NULL UNIQUE,
    senha_dentista             VARCHAR(32)  NOT NULL,
    avatar_dentista            VARCHAR(64),
    ultimo_acesso_dentista     VARCHAR(32)  NOT NULL,
    status_dentista            VARCHAR(15)  NOT NULL,
    matricula_dentista         INT          NOT NULL AUTO_INCREMENT DEFAULT 2000 PRIMARY KEY,
    nome_dentista              VARCHAR(128) NOT NULL,
    departamento_dentista      VARCHAR(32)  NOT NULL,
    funcao_dentista            VARCHAR(128) NOT NULL,
    celular1_dentista          VARCHAR(11)  NOT NULL,
    celular2_dentista          VARCHAR(11),
    email_dentista             VARCHAR(128) NOT NULL,
    cro_dentista               VARCHAR(10)  NOT NULL,
    cro_uf_dentista            VARCHAR(2)   NOT NULL,
    cro_tipo_dentista          VARCHAR(12)  NOT NULL,
    cro_data_emissao_dentista  VARCHAR(8)   NOT NULL,
    comissao_dentista          FLOAT        NOT NULL,
	data_cadastro_dentista     VARCHAR(8)   NOT NULL
);

CREATE TABLE IF NOT EXISTS oc_funcionarios(
    login_funcionario          VARCHAR(15)  NOT NULL UNIQUE,
    senha_funcionario          VARCHAR(32)  NOT NULL,
    avatar_funcionario         VARCHAR(64),
    ultimo_acesso_funcionario  VARCHAR(32)  NOT NULL,
    status_funcionario         VARCHAR(15)  NOT NULL,
    matricula_funcionario      INT          NOT NULL AUTO_INCREMENT DEFAULT 1000 PRIMARY KEY ,
    nome_funcionario           VARCHAR(128) NOT NULL,
    departamento_funcionario   VARCHAR(32)  NOT NULL,
    funcao_funcionario         VARCHAR(128) NOT NULL,
    celular1_funcionario       VARCHAR(11)  NOT NULL,
    celular2_funcionario       VARCHAR(11),
    email_funcionario          VARCHAR(128) NOT NULL,
    comissao_funcionario       FLOAT        NOT NULL,
	data_cadastro_funcionario  VARCHAR(8)   NOT NULL
);

CREATE TABLE IF NOT EXISTS oc_procedimentos(
	codigo_procedimento              INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
	codigo_paciente_procedimento     INT          NOT NULL,
	matricula_dentista_procedimento  INT          NOT NULL,
	nome_procedimento          	     VARCHAR(128) NOT NULL,
	dente_procedimento               INT          NOT NULL,
	face_procedimento                VARCHAR(5)   NOT NULL,
	valor_procedimento               FLOAT        NOT NULL,
	data_procedimento				 VARCHAR(8)   NOT NULL,
	status_procedimento              VARCHAR(32)  NOT NULL
);