CREATE DATABASE IF NOT EXISTS universidade;

USE universidade;

CREATE TABLE IF NOT EXISTS pessoa (
  cpf VARCHAR(14),
  nome VARCHAR(255),
  genero VARCHAR(16),
  d_nasc DATE,
  email VARCHAR(50),
  rua VARCHAR(50), 
  numero VARCHAR(5), 
  bairro VARCHAR(50), 
  cidade VARCHAR(50), 
  UF VARCHAR(2),
  PRIMARY KEY (cpf)
);

CREATE TABLE IF NOT EXISTS telefone (
  cpf_pessoa VARCHAR(14),
  telefone VARCHAR(15),
  PRIMARY KEY (cpf_pessoa, telefone),
  FOREIGN KEY (cpf_pessoa) REFERENCES pessoa(cpf)
);

CREATE TABLE IF NOT EXISTS funcionario (
  cpf VARCHAR(14),
  salario INT,
  d_contratacao DATE,
  PRIMARY KEY (cpf),
  FOREIGN KEY (cpf) REFERENCES pessoa(cpf)
);
CREATE TABLE IF NOT EXISTS professor (
  cpf VARCHAR(14),
  PRIMARY KEY(cpf),
  FOREIGN KEY (cpf) REFERENCES funcionario(cpf)
);
CREATE TABLE IF NOT EXISTS prof_sub (
  cpf VARCHAR(14),
  d_termino DATE,
  PRIMARY KEY (cpf),
  FOREIGN KEY (cpf) REFERENCES professor(cpf)
);

CREATE TABLE IF NOT EXISTS centro (
  cod_centro VARCHAR(10),
  cpf_diretor VARCHAR(14),
  PRIMARY KEY (cod_centro),
  FOREIGN KEY (cpf_diretor) REFERENCES professor(cpf)
);
CREATE TABLE IF NOT EXISTS centro_nome (
  nome VARCHAR(50),
  cod_centro VARCHAR(10),
  PRIMARY KEY (cod_centro),
  FOREIGN KEY (cod_centro) REFERENCES centro(cod_centro)
);
CREATE TABLE IF NOT EXISTS departamento (
  cod_centro VARCHAR(10),
  cod_dept VARCHAR(10),
  cpf_chefe VARCHAR(14),
  PRIMARY KEY (cod_centro, cod_dept),
  FOREIGN KEY (cod_centro) REFERENCES centro(cod_centro),
  FOREIGN KEY (cpf_chefe) REFERENCES professor(cpf)

);
CREATE TABLE IF NOT EXISTS departamento_nome (
  nome VARCHAR(255),
  cod_centro VARCHAR(10),
  cod_dept VARCHAR(10),
  PRIMARY KEY (cod_centro, cod_dept),
  FOREIGN KEY (cod_centro) REFERENCES centro(cod_centro)
);

CREATE TABLE IF NOT EXISTS curso (
  id_curso INT AUTO_INCREMENT,
  nome VARCHAR(50),
  cpf_coordenador VARCHAR(14),
  ch_curso INT,
  turno VARCHAR(10),
  cod_centro VARCHAR(10),
  cod_dept VARCHAR(10),
  PRIMARY KEY (id_curso),
  FOREIGN KEY (cpf_coordenador) REFERENCES professor(cpf),
  FOREIGN KEY (cod_centro,cod_dept) REFERENCES departamento(cod_centro, cod_dept)
);
CREATE TABLE IF NOT EXISTS disciplina (
  nome VARCHAR(255),
  cod_disc VARCHAR(10),
  c_horaria VARCHAR(10),
  cod_centro VARCHAR(10),
  cod_dept VARCHAR(10),
  PRIMARY KEY(cod_disc),
  FOREIGN KEY (cod_centro) REFERENCES centro(cod_centro),
  FOREIGN KEY (cod_centro,cod_dept) REFERENCES departamento(cod_centro, cod_dept)
);
CREATE TABLE IF NOT EXISTS disciplina_obrigatoria (
  cod_disc VARCHAR(10),
  id_curso INT,
  PRIMARY KEY (cod_disc, id_curso),
  FOREIGN KEY (cod_disc) REFERENCES disciplina(cod_disc),
  FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);
CREATE TABLE IF NOT EXISTS equivalencia (
  cod_equivalencia VARCHAR(10),
  cod_equivalida VARCHAR(10),
  PRIMARY KEY (cod_equivalencia, cod_equivalida),
  FOREIGN KEY (cod_equivalencia) REFERENCES disciplina(cod_disc),
  FOREIGN KEY (cod_equivalida) REFERENCES disciplina(cod_disc)
);

CREATE TABLE IF NOT EXISTS estudante (
  cpf VARCHAR(14),
  PRIMARY KEY(cpf),
  FOREIGN KEY (cpf) REFERENCES pessoa(cpf)
);
CREATE TABLE IF NOT EXISTS est_grad (
  cpf VARCHAR(14),
  id_curso INT,
  per_entrada VARCHAR(6),
  PRIMARY KEY(cpf),
  FOREIGN KEY (cpf) REFERENCES estudante(cpf),
  FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);
CREATE TABLE IF NOT EXISTS est_pos (
  cpf VARCHAR(14),
  cpf_orientador VARCHAR(14),
  PRIMARY KEY(cpf),
  FOREIGN KEY (cpf) REFERENCES estudante(cpf),
  FOREIGN KEY (cpf_orientador) REFERENCES professor(cpf)
);

CREATE TABLE IF NOT EXISTS turma (
  id_turma VARCHAR(20),
  horario VARCHAR(100),
  periodo VARCHAR(10),
  cod_disc VARCHAR(10),
  cpf_professor VARCHAR(14),
  PRIMARY KEY (id_turma, cod_disc),
  FOREIGN KEY (cod_disc) REFERENCES disciplina(cod_disc),
  FOREIGN KEY (cpf_professor) REFERENCES professor(cpf)
);

CREATE TABLE IF NOT EXISTS matricula_turma (
  cpf_estudante VARCHAR(14),
  id_turma VARCHAR(20),
  cod_disc VARCHAR(10),
  PRIMARY KEY (cpf_estudante, id_turma, cod_disc),
  FOREIGN KEY (cpf_estudante) REFERENCES est_grad(cpf),
  FOREIGN KEY (id_turma,cod_disc) REFERENCES turma(id_turma,cod_disc)
);

CREATE TABLE IF NOT EXISTS extensao (
  cpf_estudante VARCHAR(14),
  cod_centro VARCHAR(10),
  cod_dept VARCHAR(10),
  tema VARCHAR(255),
  ch_extensao INT,
  periodo VARCHAR(6),
  PRIMARY KEY (cpf_estudante, cod_centro, cod_dept),
  FOREIGN KEY (cpf_estudante) REFERENCES est_grad(cpf),
  FOREIGN KEY (cod_centro,cod_dept) REFERENCES departamento(cod_centro, cod_dept)
);
CREATE TABLE IF NOT EXISTS supervisiona (
  cpf_estudante VARCHAR(14),
  cod_centro VARCHAR(10),
  cod_dept VARCHAR(10),
  cpf_professor VARCHAR(14),
  PRIMARY KEY (cpf_estudante, cod_centro, cod_dept, cpf_professor),
  FOREIGN KEY (cpf_estudante) REFERENCES est_grad(cpf),
  FOREIGN KEY (cod_centro,cod_dept) REFERENCES departamento(cod_centro, cod_dept),
  FOREIGN KEY (cpf_professor) REFERENCES professor(cpf)
);

CREATE TABLE IF NOT EXISTS pre_req(
  cod_disc VARCHAR(10),
  cod_pre VARCHAR(10),
  id_curso INT,  
  PRIMARY KEY (cod_disc, cod_pre, id_curso),
  FOREIGN KEY (cod_disc) REFERENCES disciplina(cod_disc),
  FOREIGN KEY (cod_pre) REFERENCES disciplina(cod_disc),
  FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);
