CREATE TABLE ALUNO (
	Nome varchar(255),
	Numero_aluno int NOT NULL,
	Tipo_aluno int,
	Curso varchar(2),
	PRIMARY KEY (Numero_aluno)
);

CREATE TABLE DISCIPLINA (
	Nome_disciplina varchar(255),
	Numero_disciplina int NOT NULL,
	Creditos int,
	Departamento varchar(3),
	PRIMARY KEY (Numero_disciplina)
);

CREATE TABLE TURMA (
	Identificacao_turma int NOT NULL,
	Numero_disciplina varchar(10),
	Semestre varchar(20),
	Ano int,
	Professor varchar(255),
	FOREIGN KEY (Numero_disciplina) REFERENCES DISCIPLINA(Numero_disciplina),
	PRIMARY KEY (Identificacao_turma)	
);

CREATE TABLE HISTORICO_ESCOLAR (
	Numero_aluno int NOT NULL,
	Identificacao_turma int NOT NULL,
	Nota varchar(1),
	FOREIGN KEY (Numero_aluno) REFERENCES ALUNO(Numero_aluno)
	FOREIGN KEY (Identificacao_turma) REFERENCES (Identificacao_turma)	
);

CREATE TABLE PRE_REQUISITO (
	Numero_disciplina varchar(10) NOT NULL,
	Numero_pre_requisito varchar(10) NOT NULL,
	FOREIGN KEY (Numero_disciplina) REFERENCES DISCIPLINA(Numero_disciplina),
	PRIMARY KEY (Numero_pre_requisito)
);

INSERT INTO ALUNO VALUES ('Silva', 17, 1, 'CC');
INSERT INTO ALUNO VALUES ('Braga', 8, 2, 'CC');

INSERT INTO DISCIPLINA VALUES ('Introd. a ciencia da computação', 'CC1310', 4, 'CC');
INSERT INTO DISCIPLINA VALUES ('Estrutura de dados', 'CC3320', 4, 'CC');
INSERT INTO DISCIPLINA VALUES ('Matematica Discreta', 'MAT2410', 3, 'MAT');
INSERT INTO DISCIPLINA VALUES ('Silva', 'CC3380', 3, 'CC');

INSERT INTO TURMA VALUES (85, 'MAT2410', 'Segundo', 07, 'Kleber');
INSERT INTO TURMA VALUES (92, 'CC1310', 'Segundo', 07, 'Anderson');
INSERT INTO TURMA VALUES (102, 'CC3320', 'Primeiro', 08, 'Carlos');
INSERT INTO TURMA VALUES (112, 'MAT2410', 'Segundo', 08, 'Chang');
INSERT INTO TURMA VALUES (119, 'CC1310', 'Segundo', 08, 'Anderson');
INSERT INTO TURMA VALUES (135, 'CC3380', 'Segundo', 08, 'Santos');

INSERT INTO HISTORICO_ESCOLAR VALUES (17, 112, 'B');
INSERT INTO HISTORICO_ESCOLAR VALUES (17, 119, 'C');
INSERT INTO HISTORICO_ESCOLAR VALUES (8, 85, 'A');
INSERT INTO HISTORICO_ESCOLAR VALUES (8, 92, 'A');
INSERT INTO HISTORICO_ESCOLAR VALUES (8, 102, 'B');
INSERT INTO HISTORICO_ESCOLAR VALUES (8, 135, 'A');


INSERT INTO PRE_REQUISITO VALUES ('CC3380', 'CC3320');
INSERT INTO PRE_REQUISITO VALUES ('CC3380', 'MAT2410');
INSERT INTO PRE_REQUISITO VALUES ('CC3320', 'CC1310');


