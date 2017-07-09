USE master;

DROP DATABASE PROJETOBD;

CREATE DATABASE PROJETOBD;

USE PROJETOBD;

CREATE TABLE Equipe -- Check
(
	idequipe	integer		NOT NULL, -- gerado pela aplicação
	nomeequipe	varchar(100) NOT NULL,
	CONSTRAINT 	PK_equipe	PRIMARY KEY(idequipe)	
)

CREATE TABLE Cargo -- Check
(
	idcargo		integer			NOT NULL	IDENTITY,
	nomecargo	varchar(100) 	NOT NULL,
	salario		decimal(10,2)	NOT NULL,
	CONSTRAINT 	PK_cargo		PRIMARY KEY(idcargo)	
)

CREATE TABLE Atividade  	-- Check				-- Uma mesma atividade pode ter varios funcionarios 
(
	idatividade		integer			NOT NULL,
	descricao		varchar(1024) 	NOT NULL,
	deadline		date			NULL,
	--CONSTRAINT 		CK_ativ_dead	CHECK (DATEDIFF(day, GETDATE(), deadline) >= 0),
	CONSTRAINT 		PK_atividade	PRIMARY KEY (idatividade)	
)

CREATE TABLE Linguagens -- Check
(
	idlinguagem		integer			NOT NULL	IDENTITY,
	nome			varchar(100)	NOT NULL,
	CONSTRAINT		PK_linguagens	PRIMARY KEY (idlinguagem)
)

CREATE TABLE Funcionario -- Check
(
	idfuncionario 	integer        		NOT NULL, -- Na aplicação é que será gerada o idfuncionario
	nome          	varchar(100)     	NOT NULL,
	cpf           	varchar(12)     	NOT NULL,
	rg            	varchar(15)     	NOT NULL,
	sexo          	varchar(1)      	NOT NULL,
	estcivil      	varchar(2)     		NOT NULL,
	datanasc      	date            	NOT NULL,
	rua				varchar(100)     	NOT NULL,
	cep				varchar(10)     	NOT NULL,
    bairro        	varchar(100)     	NOT NULL,      
	numero	      	smallint        	NOT NULL,  
	email         	varchar(100)     	NULL, 
	idequipe		integer 			NULL,	
	idgerencia		integer				NULL,
	CONSTRAINT		CK_func_sexo		CHECK		(sexo IN ('F', 'M')),
	CONSTRAINT		CK_func_estcivil	CHECK		(estcivil IN ('S', 'C', 'SE', 'D', 'V')),
	CONSTRAINT		CK_func_datanasc	CHECK		(DATEDIFF(day, datanasc, GETDATE()) < 29760), -- Pessoas com idade de até 80 anos
	CONSTRAINT		PK_funcionario      PRIMARY KEY (idfuncionario),
	CONSTRAINT		AK_funcionario_cpf  UNIQUE		(cpf),
	CONSTRAINT		FK_funcionario		FOREIGN KEY (idgerencia)	REFERENCES Funcionario,
	CONSTRAINT		FK_idequipe  		FOREIGN KEY (idequipe)		REFERENCES Equipe --relacionamento com equipe
)

CREATE TABLE Telefone
(
	idfuncionario	integer		NOT NULL, 
	idtelefone		integer		NOT NULL	IDENTITY,
	numero			VARCHAR(15) NOT NULL,
	CONSTRAINT		FK_tel		FOREIGN KEY (idfuncionario) REFERENCES Funcionario,
	CONSTRAINT		PK_tel		PRIMARY KEY (idfuncionario, idtelefone)
)

CREATE TABLE Desenvolvedor -- Check
(
	idfuncionario	integer			NOT NULL,
	CONSTRAINT		FK_desen_func	FOREIGN KEY (idfuncionario)	REFERENCES Funcionario,
	CONSTRAINT		PK_desen		PRIMARY KEY (idfuncionario)
)

CREATE TABLE Consultor -- Check
(
	idfuncionario	integer			NOT NULL,
	CONSTRAINT		FK_consul_func	FOREIGN KEY (idfuncionario) REFERENCES Funcionario,
	CONSTRAINT		PK_consultor	PRIMARY KEY (idfuncionario)
)

CREATE TABLE Programa -- Check
(
	idfuncionario	integer		NOT NULL,
	idlinguagem		integer		NOT NULL,
	CONSTRAINT		FK_desen	FOREIGN KEY (idfuncionario)	REFERENCES Desenvolvedor,
	CONSTRAINT		FK_lingua	FOREIGN KEY (idlinguagem)	REFERENCES Linguagens,
	CONSTRAINT		PK_prog		PRIMARY KEY (idfuncionario, idlinguagem)
)

CREATE TABLE Trabalho -- Check
( 
	idatividade		integer						NOT NULL,
	idfuncionario	integer 					NOT NULL,
	CONSTRAINT		FK_atividade_trabalho 		FOREIGN KEY (idatividade)				REFERENCES Atividade,
	CONSTRAINT		FK_funcionario_trabalho 	FOREIGN KEY (idfuncionario)				REFERENCES Funcionario,
	CONSTRAINT		PK_trabalho	         		PRIMARY KEY (idatividade, idfuncionario) 	
)

CREATE TABLE Mensagem -- Check
(
	idmensagem		integer				NOT NULL	IDENTITY,
	idremetente		integer 			NOT NULL,
	iddestinatario	integer				NOT NULL,
	horario			datetime			NOT NULL,
	mensagem 		varchar(1024)		NOT NULL,
	CONSTRAINT		FK_remetente		FOREIGN KEY (idremetente)	 REFERENCES Funcionario, 
	CONSTRAINT		FK_destinatario		FOREIGN KEY (iddestinatario) REFERENCES Funcionario, 
	CONSTRAINT		PK_mensagem     	PRIMARY KEY (idmensagem)
)

CREATE TABLE Dependente -- Check
(
	iddependente	integer 		NOT NULL,
	idfuncionario	integer			NOT NULL,
	nome			varchar(100) 	NOT NULL,
	cpf           	varchar(12)     NULL,
	rg            	varchar(15)     NULL,
	sexo          	varchar(1)      NOT NULL,
	datanasc      	date            NOT NULL,
	CONSTRAINT		CK_dep_sexo		CHECK		(sexo IN ('F', 'M')),
	CONSTRAINT		CK_dep_datanasc	CHECK		(DATEDIFF(day, datanasc, GETDATE()) < 44640), -- 120 anos
	CONSTRAINT		FK_dep_func		FOREIGN KEY (idfuncionario) REFERENCES Funcionario,  	
	CONSTRAINT		PK_dependente   PRIMARY KEY (iddependente, idfuncionario)
)

CREATE TABLE Ambiente -- Check
(
	sala 			integer 		NOT NULL,
	andar 			integer 		NOT NULL,
	CONSTRAINT		PK_Ambiente		PRIMARY KEY (sala, andar)
)

CREATE TABLE Departamento -- Check
(
	iddepartamento	integer			NOT NULL	IDENTITY,
	nomedep			varchar(100) 	NOT NULL,
	email         	varchar(100)     NULL, 
	fone1         	varchar(15)     NULL,
	fone2          	varchar(15)     NULL,
	fone3          	varchar(15)     NULL,
	sala			integer			NOT NULL,
	andar			integer			NOT NULL,
	CONSTRAINT		AK_depart_sala	UNIQUE		(sala, andar),
	CONSTRAINT		FK_depart_sala 	FOREIGN KEY (sala, andar)	REFERENCES Ambiente,
	CONSTRAINT		PK_depart		PRIMARY KEY (iddepartamento)
)

CREATE TABLE Alocado -- Check
(
	idfuncionario	integer			NOT NULL,
	iddepartamento	integer			NOT NULL,
	idcargo			integer			NOT NULL,
	datainicio		date			NOT NULL,
	datafim			date			NULL,
	CONSTRAINT		FK_aloc_func	FOREIGN KEY (idfuncionario)		REFERENCES Funcionario,
	CONSTRAINT		FK_aloc_depart	FOREIGN KEY (iddepartamento)	REFERENCES Departamento,
	CONSTRAINT		FK_cargo		FOREIGN KEY (idcargo)			REFERENCES Cargo,
	CONSTRAINT		PK_alocado		PRIMARY KEY	(idfuncionario, iddepartamento, idcargo, datainicio)
)

CREATE TABLE Cliente -- Check
(
	idcliente 		integer			NOT NULL,
	nome          	varchar(256)	NOT NULL,
	rua				varchar(100)     NOT NULL,
	cep				varchar(10)     NOT NULL,
    bairro        	varchar(100)     NOT NULL,      
	numero	      	smallint        NOT NULL,  
	email         	varchar(100)     NULL, 
	fone1         	varchar(15)     NULL,
	fone2          	varchar(15)     NULL,
	fone3          	varchar(15)     NULL,
	CONSTRAINT		PK_cliente		PRIMARY KEY	(idcliente)
)

CREATE TABLE Fisica -- Check
(
	idfisica 	integer 		NOT NULL,
	cpf         varchar(15)		NOT NULL,
	rg          varchar(15)		NOT NULL,
	sexo        varchar(1)		NOT NULL,
	estcivil    varchar(2)		NOT NULL,
	datanasc    date			NOT NULL,
	CONSTRAINT	CK_fisi_sexo	CHECK		(sexo IN ('F', 'M')),
	CONSTRAINT	CK_fisi_estciv	CHECK		(estcivil IN ('S', 'C', 'SE', 'D', 'V')),
	CONSTRAINT	CK_func_datana	CHECK		(DATEDIFF(day, datanasc, GETDATE()) < 44640),
	CONSTRAINT  AK_fisica		UNIQUE		(cpf),
	CONSTRAINT	FK_fisi_cli		FOREIGN KEY (idfisica)	REFERENCES Cliente, 
	CONSTRAINT 	PK_fisica		PRIMARY KEY (idfisica)
)

CREATE TABLE Juridica -- Check
(
	idjuridica 		integer 		NOT NULL,
	cnpj           	varchar(25)		NOT NULL,
	inscestadual	varchar(25)		NOT NULL,
	CONSTRAINT		AK_juridica		UNIQUE		(cnpj),
	CONSTRAINT 		FK_juri_cli		FOREIGN KEY (idjuridica) REFERENCES Cliente,
	CONSTRAINT		PK_juridica		PRIMARY KEY (idjuridica)
)

CREATE TABLE Consultora 
( 
	idconsutoria	integer 		NOT NULL, -- Gerado pela aplicação
	idcliente		integer			NOT NULL,
	idfuncionario	integer			NOT NULL,
	data			date 			NOT NULL,
	CONSTRAINT      AK_consu        UNIQUE      (idcliente, idfuncionario, data),
	CONSTRAINT 		FK_consu_cli	FOREIGN KEY (idcliente)		REFERENCES Cliente,
	CONSTRAINT 		FK_consu_func	FOREIGN KEY (idfuncionario) REFERENCES Consultor,
	CONSTRAINT 		PK_consu		PRIMARY KEY (idconsutoria),
	--colocar 3 unic
)

CREATE TABLE Projeto
(
	idprojeto 		integer			NOT NULL, -- O idprojeto vai ser gerado pela aplicação
	idconsultoria	integer			NOT NULL,
	descricao		varchar(1024)	NOT NULL,
	titulo			varchar(100)	NOT NULL,
	ano 			integer 		NOT NULL,
	sala 			integer			NOT NULL,
	andar 			integer 		NOT NULL,
	custo			decimal(10,2) 	NOT NULL,
	CONSTRAINT		CK_pro_custo	CHECK		(custo < 100000000),
	CONSTRAINT		CK_pro_ano		CHECK		(ano > 2015 and ano <= YEAR(GETDATE())),
	CONSTRAINT		AK_sala      	UNIQUE		(sala, andar),
	CONSTRAINT		FK_ativ_trab	FOREIGN KEY (sala, andar)	REFERENCES Ambiente,
	CONSTRAINT		FK_proj_consul	FOREIGN KEY (idconsultoria) REFERENCES Consultora,
	CONSTRAINT		PK_projeto	    PRIMARY KEY (idprojeto)
)

CREATE TABLE Equipamento -- Check
( 
	idequipamento	integer			NOT NULL,
	anoaquisicao	integer 		NOT NULL,
	quantstoque		integer			NOT NULL,
	descricao		varchar(256)	NOT NULL,
	CONSTRAINT		PK_equip_qntest	CHECK		(quantstoque > 0),
	CONSTRAINT		CK_equp_ano		CHECK		(anoaquisicao <= YEAR(GETDATE()) and anoaquisicao >= 1990),
	CONSTRAINT		PK_equipamento 	PRIMARY KEY (idequipamento) 
)

CREATE TABLE Recursos
(
	idprojeto 		integer					NOT NULL,
	idequipamento	integer					NOT NULL,
	quant			integer					NOT NULL,
	CONSTRAINT		FK_recursos_projeto	 	FOREIGN KEY (idprojeto)		REFERENCES Projeto,
	CONSTRAINT		FK_recursos_equipamento FOREIGN KEY (idequipamento) REFERENCES Equipamento,
	CONSTRAINT		PK_recursos	         	PRIMARY KEY (idprojeto, idequipamento) 
)

CREATE TABLE Computador -- Check
( 
	idequipamento	integer			NOT NULL,
	sistema			varchar(64)		NULL,
	processador		varchar(64)		NULL,
	memoria			decimal(4,2)	NULL,
	CONSTRAINT		FK_comp_equip	FOREIGN KEY (idequipamento) REFERENCES Equipamento,
	CONSTRAINT		PK_computador	PRIMARY KEY (idequipamento)
)

CREATE TABLE Mesa -- Check
(
	idequipamento	integer			NOT NULL,
	quantlugares	integer			NOT NULL,
	CONSTRAINT		PK_mesa_qntlug	CHECK		(quantlugares > 0),
	CONSTRAINT		FK_mesa_equip	FOREIGN KEY (idequipamento)	REFERENCES Equipamento,
	CONSTRAINT		PK_mesa			PRIMARY KEY (idequipamento)
)