CREATE DATABASE Faculdade;

USE Faculdade;

CREATE TABLE Aluno( 
	idAluno int PRIMARY KEY,
	matricula varchar(50),
	nome varchar(50)
);
CREATE TABLE Curso(
	idCurso int PRIMARY KEY,
	nome varchar(50)
);
CREATE TABLE AlunoCurso(
	idAluno int,
	idCurso int,
	anoEntrada int,
	FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
	FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);
CREATE TABLE Grade(
	idGrade int PRIMARY	KEY,
	idCurso int,
	ano int,
	cargaHorariaTotal int,
	FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);
CREATE TABLE Disciplina(
	idDisciplina int PRIMARY KEY,
	nome varchar(50),
	cargaHoraria int
);
CREATE TABLE GradeDisciplina(
	idGrade int,
	idDisciplina int,
	FOREIGN KEY (idGrade) REFERENCES Grade(idGrade),
	FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)

);
CREATE TABLE Historico( 
	idAluno int,
	idDisciplina int,
	nota float,
	dataHistorico date,
	FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
	FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);
