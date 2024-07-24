-- Povoamento da Tabela Pessoas
-- 18 registros na Tabela Pessoas

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, rua, numero, bairro, cidade, UF) VALUES
    ('123.456.789-00', 'Ana Maria Braga', 'Feminino', '1949-04-01', 'braga.namaria@gmail.com', 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP'),
    ('012.345.678-99', 'Supla', 'Masculino', '1966-04-02', 'supla.brasil@gmail.com', 'Avenida do Contorno', '707', 'Savassi', 'Belo Horizonte', 'MG'),
    ("123.456.789-12", "Xerox Rolmes", "Neutrois", "1846-03-11", "xerox@email.com", "Rua do Padeiro", "221b", "Oestemosteiro", "Londres", "BA"),
    ("455.625.420-10", "Alberto Alcantara", "Masculino", "2004-11-20", "XxX_betinhogamer_XxX_minecraft_XxX@gmail.com", "Alameda das Araucárias", "123", NULL, "Campinas", "SP"),
    ("111.111.111-11", "Tonari no Totoro", "Neutrois", "1988-04-16", "meu.amigo.totoro@studio.ghibli.com", "Rua  Koganei", "00", NULL, "Toquio", "JP"),
    ("999.999.999-99", 
    '寿限無 寿限無 五劫の擦り切れ 海砂利水魚の 水行末 雲来末 風来末 食う寝る処に住む処 やぶら柑子のぶら柑子 パイポパイポ パイポのシューリンガン シューリンガンのグーリンダイ グーリンダイのポンポコピーのポンポコナーの 長久命の長助', 
    "Agênero", "2002-03-11", "ponpokopinoponpokona@yahoo.com", "Rua Chōkyūmei-no Chōsuke", "220", "Afogados", "Recife", "PE");

INSERT INTO pessoa (cpf, nome, genero, email) VALUES
    ("123.456.789-13", "Deide Costa", "Feminino", "deide.costa@gmail.com"),
    ("428.555.156-77", "Will Solace", "Masculino", "son-of-apollo@halfblood.com"),
    ("666.123.616-42", "Victor Frankenstein", "Masculino", "doctor.frankenstein@gmail.com"),
    ("000.000.006-01", "Lester Papadopoulos", "Masculino", "god-of-sun@olympus.com"),
    ("333.616.999-00", "Claudio Possani", "Masculino", "claudio.possani@gmail.com"),
    ("492.870.908-14", "Percy Jackson", "Demiboy", "son-of-poseidon@halfblood.com");

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, cidade, UF) VALUES
    ("444.444.444-44", "Nico di Angelo", "Masculino", "1932-01-28", "son-of-hades@halfblood.com", "Venice", "IT");

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, UF) VALUES 
    ("987.654.321-12", "Giuseppe Camolli", "Masculino", "1979-06-16", "pikapika@pokemon.com", "FL"),
    ("101.928.345-56", "Joana Joaquina", "Feminino", "1999-01-01", "jojo@gmail.com", "FL"),
    ("242.424.242-42", "Alice Oseman", "Feminino", "1994-10-16", "alice.oseman@gmail.com", "UK"),
    ("735.549.312-57", "Whemytta Leididaiana da Silva", "Feminino", "1997-10-16", "whemyprincesa1234@gmail.com", "PB"),
    ("800.254.312-57", "Wheydja Maiconjacson da Silva", "Feminino", "1997-10-16", "whey-protein@gmail.com", "PB");

-- Povoamento da Tabela de Telefones
-- 12 registros na Tabela de Telefones

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
    ("123.456.789-13", "(21) 98766-4321"),
    ("101.928.345-56", "(21) 99876-5432"),
    ("242.424.242-42", "(31) 98765-4321"),
    ("735.549.312-57", "(81) 91112-4321"),
    ("735.549.312-57", "(81) 91234-4321"),
    ("800.254.312-57", "(81) 99912-4321");

-- Povoamento da Tabela de Funcionarios
-- 6 registros na Tabela de Funcionarios

INSERT INTO funcionario (cpf, salario, d_contratacao) VALUES
    ("123.456.789-12", 30000,"2009-02-01"),
    ("735.549.312-57", 6000,"2024-02-01"),
    ("123.456.789-00", 20000, "1990-06-01"), 
    ("242.424.242-42", 10000, "2022-02-01"),
    ("012.345.678-99", 30000, "2000-09-01"),
    ("987.654.321-12", 8000, "2018-03-01"),
    ("666.123.616-42", 40000, "1960-06-01"),
    ("000.000.006-01", 50000, "2023-06-21"),
    ("333.616.999-00", 25000, "2020-02-01"),
    ("800.254.312-57", 5000, "2019-06-01");

-- Povoamento da Tabela de Professores
-- 3 registros na Tabela de Funcionarios

INSERT INTO professor (cpf) VALUES 
    ("123.456.789-12"),
    ("123.456.789-00"), 
    ("012.345.678-99"),
    ("735.549.312-57"),
    ("242.424.242-42"),
    ("987.654.321-12"),
    ("666.123.616-42"),
    ("000.000.006-01"),
    ("800.254.312-57");

-- Povoamento da Tabela de Professores Substitutos
-- 3 registros na Tabela de Funcionarios

INSERT INTO prof_sub (cpf, d_termino) VALUES 
    ("735.549.312-57", "2030-05-31"),
    ("242.424.242-42", "2030-03-31"),
    ("987.654.321-12", "2026-12-20"),
    ("800.254.312-57", "2024-07-26");

-- Povoamento da Tabela de Centros

INSERT INTO centro (cod_centro, cpf_diretor) VALUES 
    ("CCHS", "123.456.789-12"),
    ("CCNB", "123.456.789-00"), 
    ("CM", "012.345.678-99"),
    ("CCEA", "000.000.006-01");

-- Povoamento da Tabela de Nomes de Centro

INSERT INTO centro_nome (nome, cod_centro) VALUES 
    ("Centro de Ciências Humanas e Sociais", "CCHS"),
    ("Centro de Ciências da Natureza e Biológicas", "CCNB"), 
    ("Centro de Matemática", "CM"),
    ("Centro de Comunicação e Expressões Artísticas", "CCEA");

-- Povoamento da Tabela de Departamentos

INSERT INTO departamento (cod_centro, cod_dept, cpf_chefe) VALUES 
    ("CCHS", "DP", "123.456.789-12"),
    ("CCHS", "DF", "123.456.789-12"),
    ("CCNB", "DQ", "123.456.789-00"),
    ("CCEA", "DL", "012.345.678-99"),
    ("CCEA", "DM", "000.000.006-01"),
    ("CM", "DM", "123.456.789-12"),
    ("CCNB", "DEG", "123.456.789-12"),
    ("CCNB", "DB", "735.549.312-57");

-- Povoamento da Tabela de Departamentos 

INSERT INTO departamento_nome (nome, cod_centro, cod_dept) VALUES 
    ("Departamento de Psicologia", "CCHS", "DP"),
    ("Departamento de Química", "CCNB", "DQ"),
    ("Departamento de Letras", "CCEA", "DL"),
    ("Departamento de Filosofia", "CCHS", "DF"),
    ("Departamento de Música", "CCEA", "DM"),
    ("Departamento de Matemática", "CM", "DM"),
    ("Departamento de Engenharias e Geociências", "CCNB", "DEG"),
    ("Departamento de Biologia", "CCNB", "DB");

-- Povoamento da Tabela de Cursos

INSERT INTO curso (nome, cpf_coordenador, ch_curso, turno, cod_centro, cod_dept) VALUES -- id_curso é automaticamente preenchido
    ("Psicologia", "123.456.789-12", 3600, "Integral", "CCHS", "DP"),
    ("Gastronomia", "123.456.789-12", 3600, "Manhã", "CCNB", "DQ"),
    ("Literatura", "123.456.789-12", 4000, "Tarde", "CCEA", "DL"),
    ("Filosofia", "123.456.789-12", 3600, "Manhã", "CCHS", "DF"),
    ("Música", "123.456.789-12", 3200, "Tarde", "CCEA", "DM"),
    ("Matemática", "123.456.789-12", 4000, "Manhã", "CM", "DM"),
    ("Construção Naval", "123.456.789-12", 2800, "Tarde", "CCNB", "DEG");

-- Povoamento da Tabela de Disciplinas 

INSERT INTO disciplina (nome, cod_disc, c_horaria, cod_centro, cod_dept) VALUES
    ("Literatura Queer", "DL24", 60, "CCEA", "DL"),
    ("Representatividade", "DL43", 90, "CCEA", "DL"),
    ("Cozinha Chinesa", "DQ13", 90, "CCNB", "DQ"),
    ("Literatura Queer", "DF01", 75, "CCHS", "DF"),
    ("Cozinha Nordestina", "DQ09", 120, "CCNB", "DQ"),
    ("Cozinha Vegana", "DQ10", 120, "CCNB", "DQ"),
    ("Poesia, Melodia e Rima", "DL03", 90, "CCEA", "DL"),
    ("Composição", "DM43", 60, "CCEA", "DM"),
    ("Canto I", "DM80", 60, "CCEA", "DM"),
    ("Cálculo I", "DM72", 90, "CM", "DM"),
    ("Cálculo II", "DM75", 90, "CM", "DM"),
    ("Cálculo Avançado", "DM90", 75, "CM", "DM"),
    ("Canto II", "DM77", 60, "CCEA", "DM");

-- Povoamento da Tabela de Disciplinas Obrigatórias

INSERT INTO disciplina_obrigatoria (cod_disc, id_curso) VALUES 
    ("DL24",3),
    ("DQ09", 2),
    ("DQ10", 2),
    ("DL43", 3);

-- Povoamento da Tabela de Equivalências

INSERT INTO equivalencia (cod_equivalencia, cod_equivalida) VALUES 
    ("DL24", "DF01"),
    ("DM43", "DL03"),
    ("DM90", "DM75");

-- Povoamento da Tabela de Turmas

INSERT INTO turma (id_turma, horario, periodo, cod_disc, cpf_professor) VALUES 
    ("A1", "Terça 13h-15h/Quinta 15h-17h", "2", "DL43", "242.424.242-42"),
    ("A1", "Terça 15h-17h/Quinta 13h-15h", "6", "DL24", "242.424.242-42"),
    ("A2", "Segunda 08h-12h", "5", "DQ10", "123.456.789-00"),
    ("A2", "Terça 13h-15h/Quinta 15h-17h", "2", "DL43", "242.424.242-42"),
    ("A2", "15h-17h/Quinta 13h-15h", "6", "DL24", "242.424.242-42"),
    ("A1", "Segunda 08h-12h", "5", "DQ10", "123.456.789-00"),
    ("A8", "Segunda 13h-15h/Quinta 15h-17h", "2", "DM80", "012.345.678-99"),
    ("A9", "Segunda 13h-15h/Sexta 13h-15h", "3", "DM77", "000.000.006-01");

-- Povoamento da Tabela de Estudantes

INSERT INTO estudante (cpf) VALUES 
    ("455.625.420-10"),
    ("111.111.111-11"),
    ("999.999.999-99"),
    ("123.456.789-12"),
    ("428.555.156-77"), 
    ("444.444.444-44"),
    ("800.254.312-57"),
    ("492.870.908-14");


-- Povoamento da Tabela de Estudantes da Graduação

INSERT INTO est_grad (cpf, id_curso, per_entrada) VALUES 
    ("123.456.789-12", 1, "2020.1"),
    ("428.555.156-77", 2, "2023.2"), 
    ("444.444.444-44", 3, "2023.2"),
    ("492.870.908-14", 7, "2022.1");

-- Povoamento da Tabela de Matrículas

INSERT INTO matricula_turma (cpf_estudante, id_turma, cod_disc) VALUES 
    ("123.456.789-12", "A1","DL43"),
    ("428.555.156-77", "A1","DL43"),
    ("444.444.444-44", "A1","DL43");

-- Povoamento da Tabela de Estudantes da Pós-Graduação

INSERT INTO est_pos (cpf, cpf_orientador) VALUES 
    ("455.625.420-10", "666.123.616-42"),
    ("111.111.111-11", "666.123.616-42"),
    ("999.999.999-99", "735.549.312-57"),
    ("800.254.312-57", "735.549.312-57");

-- Povoamento da Tabela de Extensões

INSERT INTO extensao (cpf_estudante, cod_centro, cod_dept, tema, ch_extensao, periodo) VALUES 
    ("428.555.156-77", "CCEA", "DM", "Música Na'vi", 100,"2023.2"),
    ("444.444.444-44", "CCEA", "DM", "Músicas Pop", 200, "2023.1"),
    ("492.870.908-14", "CCNB", "DEG", "Biologia Marinha", 400, "2023.1");

-- Povoamento da Tabela de Supervisionamentos

INSERT INTO supervisiona (cpf_estudante, cod_centro, cod_dept, cpf_professor) VALUES 
    ("428.555.156-77", "CCEA", "DM", "000.000.006-01"),
    ("444.444.444-44", "CCEA", "DM", "000.000.006-01"),
    ("492.870.908-14", "CCNB", "DB", "735.549.312-57");


-- Povoamento da Tabea de Pré-Requisitos 

INSERT INTO pre_req (cod_disc, cod_pre, id_curso) VALUES 
    ("DM75", "DM72", 6),
    ("DM90", "DM72", 6),
    ("DM77", "DM80", 5);