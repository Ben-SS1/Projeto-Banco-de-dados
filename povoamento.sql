--- Povoamento da Tabela Pessoas
--- 18 registros na Tabela Pessoas

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, rua, numero, bairro, cidade, UF) VALUES
    ('123.456.789-00', 'Ana Maria Braga', 'Feminino', '1949-04-01', 'braga.namaria@gmail.com', 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP'),
    ('012.345.678-99', 'Supla', 'Masculino', '1989-04-09', 'lucas.almeida@gmail.com', 'Avenida do Contorno', '707', 'Savassi', 'Belo Horizonte', 'MG'),
    ("123.456.789-12", "Xerox Rolmes", "Neutrois", "1846-03-11", "xerox@email.com", "Rua do Padeiro", "221b", "Oestemosteiro", "Londres", "BA"),
    ("455.625.420-10", "Alberto Alcantara", "Masculino", "2004-11-31", "XxX_betinhogamer_XxX_minecraft_XxX@gmail.com", "Alameda das Araucárias", "123", "Campinas", "SP"),
    ("111.111.111-11", "Tonari no Totoro", "Neutrois", "1988-04-16", "tonari.no.totoro@studio.ghibli.com", "Rua  Koganei", "00", "Toquio", "Ja"),
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
    ("987.654.321-12", "Giuseppe Camolli", "Masculino", "1979-06-16", "pikapika@pokemon.com", FL),
    ("101.928.345-56", "Joana Joaquina", "Feminino", "1999-01-01", "jojo@gmail.com", "FL"),
    ("242.424.242-42", "Alice Oseman", "Feminino", "1994-10-16", "alice.oseman@gmail.com", "Chatham", "UK");

--- Povoamento da Tabela de Telefones
--- 12 registros na Tabela de Telefones

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
--- 6 registros na Tabela de Funcionarios

INSERT INTO funcionario (cpf, salario, d_contratacao) VALUES
    ("123.456.789-12", 30000,"2009-02-01"),
    ("735.549.312-57", 2000,"2024-02-01"), --- quem é esse?
    ("123.456.789-00", 20000, "1990-06-01"), 
    ("242.424.242-42", 10000, "2022-02-01"),
    ("012.345.678-99", 30000, "2000-09-01"),
    ("987.654.321-12", 8000, "2018-03-01");
;
--- Povoamento da Tabela de Professores
--- 3 registros na Tabela de Funcionarios

INSERT INTO professor (cpf) VALUES 
    ("123.456.789-12", 30000,"2009-02-01"),
    ("123.456.789-00", 20000, "1990-06-01"), 
    ("012.345.678-99", 30000, "2000-09-01");

--- Povoamento da Tabela de Professores Substitutos
--- 3 registros na Tabela de Funcionarios

INSERT INTO prof_sub (cpf, d_termino) VALUES 
    ("735.549.312-57", "2030-05-31"),
    ("242.424.242-42", "2030-03-31"),
    ("987.654.321-12", "2026-12-20");

--- Povoamento da Tabela de Centros

INSERT INTO centro (cod_centro, cpf_diretor) VALUES 
    ("CH", "123.456.789-12"),
    ("CCEN", "123.456.789-00"), 
    ("CAL", "012.345.678-99");

--- Povoamento da Tabela de Nomes de Centro

INSERT INTO centro _nome (nome, cod_centro) VALUES 
    ("Centro de Humanidades", "CH"),
    ("Centro de Ciência Exatas e da Natureza", "CCEN"), 
    ("Centro de Artes e Linguagem", "CAL");


--- Povoamento da Tabela de Departamentos

INSERT INTO departamento (cod_centro, cod_dept, cpf_chefe) VALUES 
    ("CH", "DP", ""),
    ("CCEN", "DQ", ""),
    ("CAL", "DM", "");

--- Povoamento da Tabela de Departamentos 

INSERT INTO departamento_nome (cod_centro, cod_dept, cpf_chefe) VALUES 
    ("Departamento de Psicologia", "CH", "DP"),
    ("Departamento de Química", "CCEN", "DQ"),
    ("Departamento de Letras", "CAL", "DL");

--- Povoamento da Tabela de Cursos

INSERT INTO curso (id_curso, nome, cpf_coordenador, ch_curso, turno, cod_centro, cod_dept) VALUES 
    (1234, "Psicologia", "", 3600, "Integral", "CH", "DP"),
    (1661, "Gastronomia", "", 3600, "Manhã", "CCEN", "DQ"),
    (2424, "Literatura", "", 4000, "Tarde", "CAL", "DL"),
    (1010, "Músicas", "", 3600, "Tarde", "CAL", "DM");

--- Povoamento da Tabela de Disciplinas 

INSERT INTO disciplina (nome, cod_disc, c_horaria, cod_centro, cod_dept) VALUES
    ("Literatura Queer", "DL24", 60, "CAL", "DL"),
    ("Representatividade", "DL43", 90, "CAL", "DL"),
    ("Cozinha Chinesa", "DQ13", 60, "CCEN", "DQ"),
    ("Cozinha Nordestina", "DQ09", 120, "CCEN", "DQ"),
    ("Cozinha Vegana", "DQ10", 120, "CCEN", "DQ"),
    ("Poesia, Ritmo e Rima", "DL03", 90, "CAL", "DL"),
    ("Letras", "DM43", 60, "CAL", "DM");

--- Povoamento da Tabela de Disciplinas Obrigatórias

INSERT INTO disciplina_obrigatoria (cod_disciplina, id_curso, cod_dept) VALUES 
    ("DQ09", 1661, "DQ"),
    ("DQ10", 1661, "DQ"),
    ("DL43", 2424, "DL");

--- Povoamento da Tabela de Equivalências

INSERT INTO equivalencia (cod_equivalencia, cod_equivalida) VALUES 
    ("DM43", "DL03");

--- Povoamento da Tabela de Turmas

INSERT INTO turma (id_turma, horario, periodo, cod_disciplina, cpf_professor) VALUES 
    (55557777, "Terça 13h-15h/Quinta 15h-17h", "2", "DL43", "242.424.242-42"),
    (24242424, "Terça 15h-17h/Quinta 13h-15h", "6", "DL24", "242.424.242-42"),
    (11111111, "Segunda 08h-12h", "5", "DQ10", "123.456.789-00");

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