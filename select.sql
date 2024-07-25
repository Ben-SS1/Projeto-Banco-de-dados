-- Selects

SELECT * FROM universidade.getCPF gc 

--s(pessoa)
SELECT * FROM pessoa;

-- p_(cpf,nome)(pessoa)
SELECT cpf, nome FROM pessoa;

--s_(turno=tarde)(curso)
SELECT * FROM curso WHERE turno = "Tarde";

--r(CPF, Nome, Gênero, D. Nascimento)(p_(cpf, nome, genero, d_nasc)(pessoa))
SELECT cpf "CPF", nome "Nome", genero "Gênero", d_nasc "D. Nascimento" 
FROM pessoa ORDER BY nome ASC;
SELECT count(*) Quantidade, curso.id_curso ID, curso.nome "Nome" 
FROM est_grad, curso WHERE curso.id_curso=est_grad.id_curso GROUP BY curso.id_curso;

-- p_(salario, nome)(s_(salario > 1000, pessoa.cpf = funcionario.cpf)( funcionario <X> Pessoa))
-- p_(salario, nome)(s_(salario > 1000)(funcionario <J>_(pessoa.cpf=funcionario.cpf) pessoa))
SELECT salario, nome FROM funcionario, pessoa  WHERE salario > 1000 AND pessoa.cpf=funcionario.cpf;


SELECT funcionario.salario "Sal. mais Alto", pessoa.nome "Nome" 
FROM funcionario, pessoa 
WHERE salario = (SELECT  MAX(salario) FROM funcionario) AND pessoa.cpf=funcionario.cpf;

SELECT DISTINCT d_contratacao FROM funcionario;

-- s_(nome LIKE "A%")(professor <J>_(professor.cpf=pessoa.cpf) pessoa) <U> s_(nome LIKE "Whe%")(pessoa)
(SELECT * FROM professor prof, pessoa P WHERE prof.cpf = P.cpf AND P.nome LIKE "A%"
) UNION (
    SELECT * FROM pessoa P WHERE  P.nome LIKE "Whe%");

-- p_(pessoa.nome, est_pos.cpf)(pessoa <J>_(pessoa.cpf=est_pos.cpf) est_pos) <I> p_(pessoa.nome, prof_sub.cpf)(pessoa <J>_(pessoa.cpf=prof_sub.cpf) prof_sub)
(SELECT P.nome, EP.cpf FROM pessoa AS P, est_pos AS EP WHERE P.cpf=EP.cpf
) INTERSECT (
    SELECT P.nome, PS.cpf FROM pessoa AS P, prof_sub AS PS WHERE P.cpf=PS.cpf);


-- p_(pessoa.nome, est_pos.cpf)(pessoa <J>_(pessoa.cpf=est_pos.cpf) est_pos) <D> p_(pessoa.nome, prof_sub.cpf)(pessoa <J>_(pessoa.cpf=prof_sub.cpf) prof_sub)
(SELECT P.nome, F.cpf FROM pessoa AS P, funcionario AS F WHERE P.cpf=F.cpf
) EXCEPT (
    SELECT P.nome, Prof.cpf FROM pessoa AS P, professor AS Prof WHERE P.cpf=Prof.cpf);

SELECT * FROM getDeptCentro;