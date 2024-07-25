--VIEW
CREATE VIEW getDeptCentro AS SELECT 
    departamento_nome.nome Departamento,
    departamento_nome.cod_dept "Cod. Dept",
    centro_nome.nome Centro,
    centro_nome.cod_centro Codigo 
    FROM departamento_nome, centro_nome 
    WHERE departamento_nome.cod_centro=centro_nome.cod_centro;


-- Criação dos usuários
CREATE USER 'dolphin'@'localhost' IDENTIFIED BY '12345';
CREATE USER 'john'@'localhost' IDENTIFIED BY '56789';
CREATE USER 'zero'@'localhost' IDENTIFIED BY '91234';
CREATE USER 'higor'@'localhost' IDENTIFIED BY '45678';

-- Criação das roles
CREATE ROLE 'select_view';
CREATE ROLE 'consulta';
CREATE ROLE 'dml_dql';
CREATE ROLE 'ddl';

-- Atribuição
GRANT SELECT ON universidade.getDeptCentro TO 'select_view';
GRANT 'select_view' TO 'dolphin'@'localhost';

GRANT SELECT ON universidade.* TO 'consulta';
GRANT 'consulta' TO 'john'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON universidade.* TO 'dml_dql';
GRANT 'dml_dql' TO 'zero'@'localhost';

GRANT CREATE, ALTER, DROP, INDEX ON universidade.* TO 'ddl';
GRANT 'ddl' TO 'higor'@'localhost';

-- GRANT SELECT ON *.* TO 'select_view';
-- SETs
SET DEFAULT ROLE 'select_view' FOR 'dolphin'@'localhost';
SET DEFAULT ROLE 'consulta' FOR 'john'@'localhost';
SET DEFAULT ROLE 'dml_dql' FOR 'zero'@'localhost';
SET DEFAULT ROLE 'ddl' FOR 'higor'@'localhost';