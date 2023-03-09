CREATE DATABASE IF NOT EXISTS odontocloud DEFAULT CHARACTER SET utf8mb4;
USE odontocloud;

CREATE TABLE IF NOT EXISTS oc_pacientes(
	codigo_paciente            		 	  INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
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

CREATE TABLE IF NOT EXISTS oc_profissionais(
    usuario_profissional             VARCHAR(15)  NOT NULL UNIQUE,
    senha_profissional             VARCHAR(32)  NOT NULL,
    nivel_acesso_profissional      INT          NOT NULL,
    avatar_profissional            VARCHAR(64),
    ultimo_acesso_profissional     VARCHAR(32)  NOT NULL,
    status_profissional            VARCHAR(15)  NOT NULL,
    matricula_profissional         INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_profissional              VARCHAR(128) NOT NULL,
    departamento_profissional      VARCHAR(32)  NOT NULL,
    funcao_profissional            VARCHAR(128) NOT NULL,
    vinculo_profissional           VARCHAR(32)  NOT NULL,
    celular1_profissional          VARCHAR(11)  NOT NULL,
    celular2_profissional          VARCHAR(11),
    email_profissional             VARCHAR(128) NOT NULL,
    cro_profissional               VARCHAR(10),
    cro_uf_profissional            VARCHAR(2),
    cro_tipo_profissional          VARCHAR(12),
    cro_data_emissao_profissional  VARCHAR(8),
    comissao_profissional          FLOAT        NOT NULL,
	data_cadastro_profissional     VARCHAR(8)   NOT NULL
);

CREATE TABLE IF NOT EXISTS oc_procedimentos(
	codigo_paciente_procedimento         INT          NOT NULL,
	matricula_profissional_procedimento  INT          NOT NULL,
	nome_procedimento          	         VARCHAR(128) NOT NULL,
	dente_procedimento                   INT          NOT NULL,
	face_procedimento                    VARCHAR(5)   NOT NULL,
	valor_procedimento                   FLOAT        NOT NULL,
	data_procedimento				     VARCHAR(8)   NOT NULL,
	status_procedimento                  VARCHAR(32)  NOT NULL
);