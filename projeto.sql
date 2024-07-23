CREATE DATABASE IF NOT EXISTS universidade;

USE universidade;

'
faltam:
Centro(Cod-Centro, CPF-Diretor)
Centro-nome(Nome, Cod-Centro)
Departamento(Cod-Centro, Cod-Dept, CPF-Chefe)
Departamento-nome(Nome, Cod-Centro, Cod-Dept)
Extensão(CPF-Estudante, Cod-Centro, Cod-Dept, Tema, CH-Extensão, Período)
Supervisiona(CPF-Estudante, Cod-Centro, Cod-Dept, CPF-Professor) 
Telefone(CPF-Pessoa, Telefone)
Equivalência(Cod-equivalente, Cod-equivalida)
Matrícula-Turma(CPF-Estudante, ID-Turma)
Pré-requisito(Cod-Disciplina, Cod-pré, ID-Curso, Cod-Dept,)
Disciplina-Obrigatória(Cod-Disciplina, ID-Curso, Cod-Dept)
'



CREATE TABLE IF NOT EXISTS pessoa (
  'cpf' VARCHAR(14) PRIMARY KEY,
  'nome' VARCHAR(255),
  'genero' VARCHAR(30),
  'd-nasc' DATE,
  'email' VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS funcionario (
  'cpf-funcionario' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES pessoa('cpf'),
  'salario' INT,
  'd-contratacao' DATE
);
CREATE TABLE IF NOT EXISTS professor (
  'cpf-professor' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES funcionario('cpf-funcionario')
);
CREATE TABLE IF NOT EXISTS prof_sub (
  'cpf-professor' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES professor('cpf-professor')
  'd-termino' DATE,
);


CREATE TABLE IF NOT EXISTS curso (
  'id-curso' VARCHAR(10) PRIMARY KEY,
  'nome' VARCHAR(50),
  'cpf-coordenador' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES funcionario('cpf-funcionario'),
  'ch-curso' VARCHAR(10),
  'turno' VARCHAR(10),
  'cod-centro' VARCHAR(10) PRIMARY KEY FOREIGN KEY REFERENCES centro('cod-centro'),
  'cod-dept' VARCHAR(20) PRIMARY KEY FOREIGN KEY REFERENCES departamento('cod-dept')
);
CREATE TABLE IF NOT EXISTS disciplina (
  'nome' VARCHAR(255),
  'cod-disc' VARCHAR(10),
  'c-horaria' VARCHAR(10),
  'cod-centro' VARCHAR(10) PRIMARY KEY FOREIGN KEY REFERENCES centro('cod-centro'),
  'cod-dept' VARCHAR(20) PRIMARY KEY FOREIGN KEY REFERENCES departamento('cod-dept')
);
CREATE TABLE IF NOT EXISTS turma (
  'id-turma' VARCHAR(20), PRIMARY KEY,
  'horario' VARCHAR(10),
  'periodo' VARCHAR(10),
  'cod-disciplina' VARCHAR(10) PRIMARY KEY FOREIGN KEY REFERENCES disciplina('cod-disc'),
  'cpf-professor' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES professor('cpf-professor')
);


CREATE TABLE IF NOT EXISTS estudante (
  'cpf-estudante' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES pessoa('cpf'),
);
CREATE TABLE IF NOT EXISTS est_grad (
  'cpf-estudante' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES estudante('cpf-estudante'),
  'id-curso' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES curso('id-curso')
  'per-entrada' VARCHAR(15)
);
CREATE TABLE IF NOT EXISTS est_pos (
  'cpf-estudante' VARCHAR(14) PRIMARY KEY FOREIGN KEY REFERENCES estudante('cpf-estudante'),
  'cpf-orientador' VARCHAR(14) PRIMARY KEY,
);

