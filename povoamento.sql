--- Povoamento da Tabela Pessoas
--- 18 registros na Tabela Pessoas

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, rua, numero, bairro, cidade, UF) VALUES
    ('123.456.789-00', 'Ana Maria Braga', 'Feminino', '1949-04-01', 'braga.namaria@gmail.com', 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP'),
    ('012.345.678-99', 'Lucas Almeida', 'Masculino', '1989-04-09', 'lucas.almeida@gmail.com', 'Avenida do Contorno', '707', 'Savassi', 'Belo Horizonte', 'MG'),
    ("123.456.789-12", "Xerox Rolmes", "Neutrois", "1846-03-11", "xerox@email.com", "Rua do Padeiro", "221b", "Oestemosteiro", "Londres", "BA"),
    ("455.625.420-10", "Alberto Alcantara", "Masculino", "2004-11-31", "XxX_betinhogamer_XxX_minecraft_XxX@gmail.com", "Alameda das Araucárias", "123", "Campinas", "SP"),
    ("111.111.111-11", "Tonari no Totoro", "Neutrois", "1988-04-16", "meu.amigo.totoro@studio.ghibli.com", "Rua  Koganei", "00", "Toquio", "Ja"),
    ("999.999.999-99", 
    "寿限無 寿限無 五劫の擦り切れ 海砂利水魚の 水行末 雲来末 風来末 食う寝る処に住む処 やぶら柑子のぶら柑子 パイポパイポ パイポのシューリンガン 
    シューリンガンのグーリンダイ グーリンダイのポンポコピーのポンポコナーの 長久命の長助", 
    "Agênero", "2002-03-11", "ponpokopinoponpokona@yahoo.com", "Rua Chōkyūmei-no Chōsuke", "220", "Afogados", "Recife", "PE");

INSERT INTO pessoa (cpf, nome, genero) VALUES
    ("123.456.789-12", "Deide Costa", "Feminino", "deide.costa@gmail.com"),
    ("428.555.156-77", "Will Solace", "Masculino", "son-of-apollo@halfblood.com");

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, cidade, UF) VALUES
    ("444.444.444-44", "Nico di Angelo", "Masculino", "1932-01-28", "son-of-hades@halfblood.com", "Venice", "IT");

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, UF) VALUES 
    ("123.456.789-12", "Giuseppe Camolli", "Masculino", "1979-06-16", "pikapika@pokemon.com", FL),
    ("101.928.345-56", "Joana Joaquina", "Feminino", "1999-01-01", "jojo@gmail.com", "FL"),
    ("242.424.242-42", "Alice Oseman", "Feminino", "1994-10-16", "alice.oseman@gmail.com", "Chatham", "UK");

--- Povoamento da Tabela de Telefones

INSERT INTO telefone (cpf_pessoa, telefone) VALUES 
    ("123.456.789-00", "(11) 98765-4321"),
    ("012.345.678-99", "(21) 99876-5432"),
    ("123.456.789-12", "(21) 98765-4321"),
    ("455.625.420-10", "(71) 98901-2345"),
    ("111.111.111-11", "(71) 97890-1234"),
    ("999.999.999-99", "(31) 99012-3456"),
    ("123.456.789-12", "(31) 98901-2345"),
    ("428.555.156-77", "(11) 98765-4321"),
    ("444.444.444-44", "(21) 97654-3210"),
    ("123.456.789-12", "(21) 98765-4321"),
    ("101.928.345-56", "(21) 99876-5432"),
    ("242.424.242-42", "(31) 98765-4321");


--- Povoamento da Tabela de Funcionarios
--- 2 registros na Tabela de Funcionarios

INSERT INTO funcionario (cpf, salario, d_contratacao) VALUES
    ("12345678912", 30000,"2009-02-01");
INSERT INTO funcionario (cpf, salario, d_contratacao) VALUES
    ("73554931257", 2000,"2024-02-01");

--- Povoamento da Tabela de Professores

INSERT INTO professor () VALUES 
    ();

--- Povoamento da Tabela de Professores Substitutos

INSERT INTO prof_sub () VALUES 
    ();

--- Povoamento da Tabela de Centros

INSERT INTO centro () VALUES 
    ();

--- Povoamento da Tabela de Departamentos

INSERT INTO departamento () VALUES 
    ();

--- Povoamento da Tabela de Cursos

INSERT INTO curso () VALUES 
    ();

--- Povoamento da Tabela de Disciplinas 

INSERT INTO disciplina (nome, cod_disc, c_horaria, cod_centro, cod_dept) VALUES
    ()

--- Povoamento da Tabela de Disciplinas Obrigatórias

INSERT INTO disciplina_obrigatoria () VALUES 
    ();

--- Povoamento da Tabela de Equivalências

INSERT INTO equivalencia () VALUES 
    ();

--- Povoamento da Tabela de Turmas

INSERT INTO turma () VALUES 
    ();

--- Povoamento da Tabela de Matrículas

INSERT INTO matricula_turma () VALUES 
    ();

--- Povoamento da Tabela de Estudantes

INSERT INTO estudante () VALUES 
    ();

--- Povoamento da Tabela de Estudantes da Graduação

INSERT INTO est_grad () VALUES 
    ();

--- Povoamento da Tabela de Estudantes da Pós-Graduação

INSERT INTO est_pos () VALUES 
    ();

--- Povoamento da Tabela de Extensões

INSERT INTO extensao () VALUES 
    ();

--- Povoamento da Tabela de Supervisionamentos

INSERT INTO supervisiona () VALUES 
    ();

--- Povoamento da Tabea de Pré-Requisitos 

INSERT INTO pre_req () VALUES 
    ();