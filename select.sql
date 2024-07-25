CREATE VIEW getCPF AS SELECT cpf FROM pessoa;
GRANT SELECT ON universidade.getCPF TO 'select_view';

-- Criar o usuário
CREATE USER 'dolphin'@'localhost' IDENTIFIED BY '12345';

-- Criar o role com os privilégios desejados
CREATE ROLE 'select_view';
GRANT SELECT ON *.* TO 'select_view';

-- Atribuir o role ao usuário
GRANT 'select_view' TO 'dolphin'@'localhost';

-- Selects

SELECT * FROM universidade.getCPF gc 

--s(pessoa)
SELECT * FROM pessoa;

-- p_(cpf,nome)(pessoa)
SELECT cpf, nome FROM pessoa;

--s_(turno=tarde)(curso)
SELECT * FROM curso WHERE turno = "Tarde";

SELECT cpf "CPF", nome "Nome", genero "Gênero", d_nasc "D. Nascimento" FROM pessoa ORDER BY nome ASC;
SELECT count(*) Quantidade, curso.id_curso ID, curso.nome "Nome" FROM est_grad, curso WHERE curso.id_curso=est_grad.id_curso GROUP BY curso.id_curso;

SELECT funcionario.salario "Salario", pessoa.nome "Nome" FROM funcionario, pessoa  WHERE salario > 1000 AND pessoa.cpf=funcionario.cpf;
-- p_(salario, nome)(s_(salario > 1000, pessoa.cpf = funcionario.cpf)( funcionario <X> Pessoa))

SELECT funcionario.salario "Sal. mais Alto", pessoa.nome "Nome" FROM funcionario, pessoa WHERE salario = (SELECT  MAX(salario) FROM funcionario) AND pessoa.cpf=funcionario.cpf;

SELECT DISTINCT d_contratacao FROM funcionario;

(SELECT * FROM professor "Professor" AS P WHERE P.nome LIKE "A%"
) UNION (
    SELECT * FROM prof_sub "Prof. Substituto" AS P WHERE P.nome LIKE "Whe%");

(SELECT P.nome, EP.cpf FROM pessoa AS P, est_pos AS EP WHERE P.cpf=EP.cpf
) INTERSECT (
    SELECT P.nome, PS.cpf FROM pessoa AS P, prof_sub AS PS WHERE P.cpf=PS.cpf);

(SELECT P.nome, F.cpf FROM pessoa AS P, funcionario AS F WHERE P.cpf=F.cpf
) EXCEPT (
    SELECT P.nome, Prof.cpf FROM pessoa AS P, professor AS Prof WHERE P.cpf=Prof.cpf);
