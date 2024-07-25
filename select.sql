SELECT cpf, nome, genero, d_nasc FROM pessoa;
SELECT funcionario.salario, pessoa.nome FROM funcionario, pessoa WHERE salario > 1000 AND pessoa.cpf=funcionario.cpf;
SELECT DISTINCT d_contratacao FROM funcionario;
SELECT P.d_nasc AS 'Data de nascimento' FROM pessoa AS P

(SELECT P.nome, P.d_nasc, P.rua FROM pessoa AS P WHERE P.nome LIKE "%Rolmes%"
) UNION (
    SELECT P.nome, P.d_nasc, P.rua FROM pessoa AS P WHERE P.nome LIKE "%Alcantara%")

(SELECT P.nome, EP.cpf FROM pessoa AS P, est_pos AS EP WHERE P.cpf=EP.cpf
) INTERSECT (
    SELECT P.nome, PS.cpf FROM pessoa AS P, prof_sub AS PS WHERE P.cpf=PS.cpf)

(SELECT P.nome, F.cpf FROM pessoa AS P, funcionario AS F WHERE P.cpf=F.cpf
) EXCEPT (
    SELECT P.nome, Prof.cpf FROM pessoa AS P, professor AS Prof WHERE P.cpf=Prof.cpf)


SELECT * FROM pessoa;
SELECT * FROM telefone;
SELECT * FROM funcionario;
SELECT * FROM professor;
SELECT * FROM prof_sub;
SELECT * FROM centro;
SELECT * FROM centro_nome;
SELECT * FROM departamento;
SELECT * FROM departamento_nome;
SELECT * FROM curso;
SELECT * FROM disciplina;
SELECT * FROM *;
SELECT * FROM *;
SELECT * FROM *;
SELECT * FROM *;
SELECT * FROM *;
SELECT * FROM *;
SELECT * FROM *;
SELECT * FROM *;