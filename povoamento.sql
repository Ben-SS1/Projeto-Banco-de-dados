USE universidade;

-- Povoamento da Tabela Pessoas
-- 18 registros na Tabela Pessoas

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, rua, numero, bairro, cidade, UF) VALUES
    ("157.251.257-18", "Ana Maria Braga", "Feminino", "1949-04-01", "braga.namaria@gmail.com", "Rua das Flores", "123", "Centro", "São Paulo", "SP"), -- professora
    ("194.301.755-72", "Supla", "Masculino", "1966-04-02", "supla.brasil@gmail.com", "Avenida do Contorno", "707", "Savassi", "Belo Horizonte", "MG"), -- professor
    ("123.456.789-00", "Xerox Rolmes", "Neutrois", "1846-03-11", "xerox@email.com", "Rua do Padeiro", "221b", "Oestemosteiro", "Londres", "BA"), -- pŕofessor
    ("468.692.504-56", "Alberto Alcantara", "Masculino", "2004-11-20", "XxX_betinhogamer_XxX_minecraft_XxX@gmail.com", "Alameda das Araucárias", "123", NULL, "Campinas", "SP"), -- estudante pos
    ("074.464.385-68", "Totoro", "Neutrois", "1988-04-16", "tonari.no.totoro@studio.ghibli.com", "Rua  Koganei", "00", NULL, "Toquio", "JP"), -- estudante pós
    ("999.999.999-99", 
    '寿限無 寿限無 五劫の擦り切れ 海砂利水魚の 水行末 雲来末 風来末 食う寝る処に住む処 やぶら柑子のぶら柑子 パイポパイポ パイポのシューリンガン シューリンガンのグーリンダイ グーリンダイのポンポコピーのポンポコナーの 長久命の長助', 
    "Agênero", "2002-03-11", "ponpokopinoponpokona@yahoo.com", "Rua Chōkyūmei-no Chōsuke", "220", "Afogados", "Recife", "PE"); -- estudante pós

INSERT INTO pessoa (cpf, nome, genero, email) VALUES
    ("988.500.358-45", "Cuca Beludo", "Não-binário", "cuca.cabeludo@gmail.com"), -- estudante gradução
    ("409.524.767-38", "Will Solace", "Masculino", "son-of-apollo@halfblood.com"), -- estudante graduação
    ("604.629.474-67", "Victor Frankenstein", "Masculino", "doctor.frankenstein@gmail.com"), -- professor
    ("000.000.006-01", "Lester Papadopoulos", "Masculino", "god-of-sun@olympus.com"), -- professor
    ("048.826.172-42", "Claudio Possani", "Masculino", "claudio.possani@gmail.com"), -- professor
    ("416.236.407-92", "Percy Jackson", "Demiboy", "son-of-poseidon@halfblood.com"), -- estudante graduação
    ("831.550.514-93", "Hercule Poirot", "Masculino", "hercule.poirot@gmail.com"), -- professor
    ("200.240.403-80", "Kujo Jotaro", "Bad Boy", "star.platinum@spw.org"); -- professor

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, cidade, UF) VALUES
    ("868.818.605-79", "Nico di Angelo", "Masculino", "1932-01-28", "son-of-hades@halfblood.com", "Venice", "IT"); -- estudante graduação

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, UF) VALUES 
    ("537.382.259-00", "Giuseppe Camolli", "Masculino", "1979-06-16", "pikapika@pokemon.com", "FL"), -- professor substituto
    ("622.229.395-69", "Joana Joaquina", "Feminino", "2003-01-01", "jojobr@spw.org", "RJ"), -- estudante graduação
    ("565.113.417-47", "Alice Oseman", "Feminino", "1994-10-16", "alice.oseman@gmail.com", "UK"), -- professora substituta
    ("769.213.426-03", "Whemytta Leididaiana da Silva", "Feminino", "1997-10-16", "whemyprincesa1234@gmail.com", "PE"), -- professora substituta
    ("766.563.645-43", "Wheydja Maiconjacson da Silva", "Feminino", "1997-10-16", "whey-protein@gmail.com", "PE"), -- estudante pos
    ("276.755.822-92", "Hugo Agaugeó", "Jupariano", "2003-10-16", "hugohugohugo@gmail.com", "PE"), -- estudante graduação
    ("942.703.890-01", "Cassandra Clare", "Feminino", "1973-09-27", "cassandra.clare@shadowhunters.com", "RJ"), -- professora 
    ("460.417.549-78", "Maria Joaquina", "Feminino", "2000-12-28", "maria.joaquina@gmail.com", "RJ"), -- estudante graduação
    ("453.554.423-90", "Bernardinho", "Masculino", "1959-08-25", "bernardinho@tecnico.volei.com", "PA"), -- professor
    ("863.501.190-29", 'Albert Einstein', 'Masculino', '1879-03-14', 'einstein@relativity.com', 'SP'), -- professor
    ("087.623.072-90", 'Marie Curie', "Feminino", '1867-11-07', 'marie@radium.com', 'MG'), -- professor 
    ("924.728.227-66", 'Isaac Newton', "Genderqueer", '1643-01-04', 'newton@gravity.com', 'SP'), -- professor
    ("474.013.604-03", 'Nikola Tesla', "Masculino", '1856-07-10', 'tesla@acdc.com', 'RS'), -- professor 
    ("880.483.410-26", 'Cleópatra', "Feminino", '0069-01-01', 'cleopatra@egypt.com', 'BA'), -- estudante pos
    ("361.060.078-02", "Pikachu", "Pikachu", "1996-04-12", "pikachu@pokemon.com", "SP"), -- estudante graduação
    ("498.779.581-71", 'Girafales', "Masculino", '1948-12-31', 'professor.girafales@vila.com', 'BA'), -- professor
    ("893.473.331-40", 'Chaves', "Masculino", '1950-01-01', 'chaves@vila.com', 'SP'), -- estudante graduação
    ("222.386.412-03", 'LaraTeX Croft', "Feminino", '1968-02-14', 'lara@tombraider.com', 'BA'), -- estudante graduação
    ("070.486.680-32", 'Maura Labingi', "Masculino", '1991-01-20', NULL, 'ME'), -- estudante graduação
    ("770.444.741-60", 'Mona Lisa', "Feminino", '1503-01-01', 'mona@davinci.com', 'MG'); -- estudante graduação

-- Povoamento da Tabela de Telefones
-- 12 registros na Tabela de Telefones

INSERT INTO telefone (cpf_pessoa, telefone) VALUES 
    ("157.251.257-18", "(98) 984512-7561"),
    ("157.251.257-18", "(24) 992812-9856"),
    ("194.301.755-72", "(93) 995829-5379"),
    ("123.456.789-00", "(95) 984994-3219"), 
    ("123.456.789-00", "(46) 989687-6326"),
    ("468.692.504-56", "(65) 983048-7920"),
    ("074.464.385-68", "(35) 987841-8011"),
    ("999.999.999-99", "(13) 978100-6030"),
    ("988.500.358-45", "(34) 973319-2722"),
    ("409.524.767-38", "(13) 996014-3703"),
    ("604.629.474-67", "(55) 984139-5272"),
    ("048.826.172-42", "(79) 999537-3177"),
    ("416.236.407-92", "(42) 981022-7493"),
    ("831.550.514-93", "(49) 978690-4487"),
    ("200.240.403-80", "(37) 996214-3933"),
    ("868.818.605-79", "(96) 992260-5095"),
    ("537.382.259-00", "(18) 996494-4897"),
    ("622.229.395-69", "(62) 983519-2254"),
    ("565.113.417-47", "(13) 991864-2694"),
    ("769.213.426-03", "(24) 981304-2961"),
    ("942.703.890-01", "(71) 985562-5675"),
    ("460.417.549-78", "(62) 994986-2387"),
    ("453.554.423-90", "(83) 985933-1002"),
    ("276.755.822-92", "(83) 982488-7735"),
    ("276.755.822-92", "(79) 988434-3086");

-- Povoamento da Tabela de Funcionarios
-- 6 registros na Tabela de Funcionarios

INSERT INTO funcionario (cpf, salario, d_contratacao) VALUES
    ("123.456.789-00", 30000, "2009-02-01"),
    ("769.213.426-03", 10000, "2024-02-01"),
    ("157.251.257-18", 20000, "1990-06-01"), 
    ("565.113.417-47", 14000, "2022-02-01"),
    ("194.301.755-72", 30000, "2000-09-01"),
    ("537.382.259-00", 12000, "2018-03-01"),
    ("604.629.474-67", 40000, "1960-06-01"),
    ("000.000.006-01", 50000, "2023-06-21"),
    ("048.826.172-42", 25000, "2020-02-01"),
    ("942.703.890-01", 20000, "2016-05-01"),
    ("831.550.514-93", 25000, "2010-06-01"),
    ("200.240.403-80", 15000, "2010-03-01"),
    ("453.554.423-90", 25000, "2016-03-01"),
    ("087.623.072-90", 50000, "2001-01-01"),
    ("924.728.227-66", 30000, "2012-12-20"),
    ("498.779.581-71", 16000, "2016-09-27"),
    ("766.563.645-43", 5000,"2020-07-26");

-- Povoamento da Tabela de Professores
-- 3 registros na Tabela de Funcionarios

INSERT INTO professor (cpf) VALUES 
    ("123.456.789-00"),
    ("157.251.257-18"), 
    ("194.301.755-72"),
    ("769.213.426-03"),
    ("565.113.417-47"),
    ("537.382.259-00"),
    ("604.629.474-67"),
    ("000.000.006-01"),
    ("048.826.172-42"), 
    ("942.703.890-01"),
    ("831.550.514-93"),
    ("200.240.403-80"),
    ("453.554.423-90"),
    ("087.623.072-90"),
    ("498.779.581-71"),
    ("924.728.227-66"),
    ("766.563.645-43");

-- Povoamento da Tabela de Professores Substitutos
-- 3 registros na Tabela de Funcionarios

INSERT INTO prof_sub (cpf, d_termino) VALUES 
    ("769.213.426-03", "2030-05-31"),
    ("565.113.417-47", "2030-03-31"),
    ("537.382.259-00", "2026-12-20"),
    ("766.563.645-43", "2024-07-26");

-- Povoamento da Tabela de Centros

INSERT INTO centro (cod_centro, cpf_diretor) VALUES 
    ("CCHS", "123.456.789-00"), -- Xerox Holmes
    ("CCNB", "157.251.257-18"), -- Ana Maria Braga
    ("CM", "048.826.172-42"), -- Claudio Possani
    ("CCEA", "000.000.006-01"); -- Apollo

-- Povoamento da Tabela de Nomes de Centro

INSERT INTO centro_nome (nome, cod_centro) VALUES 
    ("Centro de Ciências Humanas e Sociais", "CCHS"),
    ("Centro de Ciências da Natureza e Biológicas", "CCNB"), 
    ("Centro de Matemática", "CM"),
    ("Centro de Comunicação e Expressões Artísticas", "CCEA");

-- Povoamento da Tabela de Departamentos

INSERT INTO departamento (cod_centro, cod_dept, cpf_chefe) VALUES 
    ("CCHS", "DP", "831.550.514-93"), -- Hercule Poirot
    ("CCHS", "DF", "123.456.789-00"), -- Xerox Holmes (?)
    ("CCNB", "DQ", "087.623.072-90"), -- Marie Curie
    ("CCEA", "DL", "942.703.890-01"), -- Cassandra Clare
    ("CCEA", "DM", "194.301.755-72"), -- Supla
    ("CM", "DM", "048.826.172-42"), -- Claudio Possani
    ("CCNB", "DEG", "123.456.789-00"), -- Xerox Holmes (?) 
    ("CCNB", "DB", "200.240.403-80"), -- Kujo Jotaro
    ("CCEA", "DEF", "453.554.423-90");  -- Bernardinho

-- Povoamento da Tabela de Departamentos 

INSERT INTO departamento_nome (nome, cod_centro, cod_dept) VALUES 
    ("Departamento de Psicologia", "CCHS", "DP"),
    ("Departamento de Química", "CCNB", "DQ"),
    ("Departamento de Letras", "CCEA", "DL"),
    ("Departamento de Filosofia", "CCHS", "DF"),
    ("Departamento de Música", "CCEA", "DM"),
    ("Departamento de Matemática", "CM", "DM"),
    ("Departamento de Engenharias e Geociências", "CCNB", "DEG"),
    ("Departamento de Biologia", "CCNB", "DB"),
    ("Departamento de Educação Física", "CCEA", "DEF");

-- Povoamento da Tabela de Cursos

INSERT INTO curso (nome, cpf_coordenador, ch_curso, turno, cod_centro, cod_dept) VALUES -- id_curso é automaticamente preenchido
    ("Psicologia", "123.456.789-00", 3600, "Integral", "CCHS", "DP"),
    ("Gastronomia", "157.251.257-18", 3600, "Manhã", "CCNB", "DQ"), 
    ("Literatura", "942.703.890-01", 4000, "Tarde", "CCEA", "DL"), 
    ("Filosofia", "498.779.581-71", 3600, "Manhã", "CCHS", "DF"), 
    ("Música", "194.301.755-72", 3200, "Tarde", "CCEA", "DM"), 
    ("Matemática", "924.728.227-66", 4000, "Manhã", "CM", "DM"), 
    ("Construção Naval", "200.240.403-80", 2800, "Tarde", "CCNB", "DEG"), 
    ("Educação Física", "453.554.423-90", 3600, "Tarde", "CCEA", "DEF"); 

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
    ("Canto II", "DM77", 60, "CCEA", "DM"),
    ("Geometria Analítica", "DM30", 60, "CM", "DM"),
    ("Álgebra Linear", "DM82", 90, "CM", "DM"),
    ("Álgebra Linear II", "DM83", 60, "CM", "DM"),
    ("Narrativas Não-Ficcionais", "DL40", 60, "CCEA", "DL"),
    ("Cálculo III", "DM84", 120, "CM", "DM");

-- Povoamento da Tabela de Disciplinas Obrigatórias

INSERT INTO disciplina_obrigatoria (cod_disc, id_curso) VALUES 
    ("DL24",3),
    ("DQ09", 2),
    ("DQ10", 2),
    ("DL43", 3),
    ("DM72", 7), 
    ("DM75", 7),
    ("DM72", 6),
    ("DM82", 6),
    ("DM83", 6),
    ("DM30", 6),
    ("DL40", 3);

-- Povoamento da Tabela de Equivalências

INSERT INTO equivalencia (cod_equivalencia, cod_equivalida) VALUES 
    ("DL24", "DF01"),
    ("DM43", "DL03"),
    ("DM90", "DM75");

-- Povoamento da Tabela de Turmas

INSERT INTO turma (id_turma, horario, periodo, cod_disc, cpf_professor) VALUES 
    ("A1", "Terça 13h-15h/Quinta 15h-17h", "2024.1", "DL43", "565.113.417-47"),
    ("A1", "Terça 15h-17h/Quinta 13h-15h", "2024.1", "DL24", "565.113.417-47"),
    ("A2", "Segunda 08h-12h", "2024.1", "DQ10", "157.251.257-18"),
    ("A2", "Segunda 13h-15h/Quarta 15h-17h", "2024.1", "DL43", "565.113.417-47"),
    ("A2", "Segunda 15h-17h/Quarta 13h-15h", "2024.1", "DL24", "565.113.417-47"),
    ("A1", "Segunda 08h-12h", "2023.2", "DQ10", "157.251.257-18"),
    ("A8", "Segunda 13h-15h/Quinta 15h-17h", "2023.2", "DM80", "194.301.755-72"),
    ("A9", "Segunda 13h-15h/Sexta 13h-15h", "2023.2", "DM77", "000.000.006-01"),
    ("A0", "Segunda 08h-10h/Sexta 10h-12h", "2023.2", "DM72", "048.826.172-42"),
    ("A0", "Segunda 10h-12h/Sexta 08h-10h", "2023.2", "DM75", "048.826.172-42"),
    ("T1", "Segunda 08-11h", "2023.2", "DM30", "766.563.645-43"),
    ("T2", "Quinta 08-11h", "2023.1", "DM30", "766.563.645-43"),
    ("A0", "Terça 08h-10h/Sexta 08h-10h", "2022.1", "DM84","048.826.172-42");

-- Povoamento da Tabela de Estudantes

INSERT INTO estudante (cpf) VALUES 
    ("468.692.504-56"),
    ("074.464.385-68"),
    ("999.999.999-99"),
    ("409.524.767-38"), 
    ("868.818.605-79"),
    ("766.563.645-43"),
    ("416.236.407-92"), 
    ("460.417.549-78"),
    ("276.755.822-92"),
    ("770.444.741-60"),
    ("893.473.331-40"),
    ("222.386.412-03"),
    ("070.486.680-32"),
    ("880.483.410-26"),
    ("988.500.358-45"),
    ("622.229.395-69");

-- Povoamento da Tabela de Estudantes da Graduação

INSERT INTO est_grad (cpf, id_curso, per_entrada) VALUES 
    ("409.524.767-38", 2, "2023.2"), 
    ("868.818.605-79", 3, "2023.2"),
    ("416.236.407-92", 7, "2022.1"),
    ("460.417.549-78", 1, "2021.1"),
    ("276.755.822-92", 1, "2021.1"),
    ("893.473.331-40", 7, "2018.1"),
    ("222.386.412-03", 2, "2017.1"),
    ("070.486.680-32", 2, "2014.1"),
    ("988.500.358-45", 4, "2018.2"),
    ("622.229.395-69", 6, "2022.2");


-- Povoamento da Tabela de Matrículas

INSERT INTO matricula_turma (cpf_estudante, id_turma, cod_disc) VALUES 
    ("409.524.767-38", "A1", "DL43"),
    ("868.818.605-79", "A1", "DL43"),
    ("416.236.407-92", "A0", "DM75"),
    ("622.229.395-69", "T1", "DM30");

-- Povoamento da Tabela de Estudantes da Pós-Graduação

INSERT INTO est_pos (cpf, cpf_orientador) VALUES 
    ("468.692.504-56", "604.629.474-67"),
    ("074.464.385-68", "942.703.890-01"),
    ("999.999.999-99", "769.213.426-03"),
    ("766.563.645-43", "769.213.426-03"),
    ("770.444.741-60", "087.623.072-90"),
    ("880.483.410-26", "498.779.581-71");

-- Povoamento da Tabela de Extensões

INSERT INTO extensao (cpf_estudante, cod_centro, cod_dept, tema, ch_extensao, periodo) VALUES 
    ("409.524.767-38", "CCEA", "DM", "Música Na'vi", 100,"2023.2"),
    ("868.818.605-79", "CCEA", "DM", "Músicas Pop", 200, "2023.1"),
    ("416.236.407-92", "CCNB", "DEG", "Biologia Marinha", 400, "2023.1");

-- Povoamento da Tabela de Supervisionamentos

INSERT INTO supervisiona (cpf_estudante, cod_centro, cod_dept, cpf_professor) VALUES 
    ("409.524.767-38", "CCEA", "DM", "000.000.006-01"),
    ("868.818.605-79", "CCEA", "DM", "000.000.006-01"),
    ("416.236.407-92", "CCNB", "DB", "200.240.403-80");

-- Povoamento da Tabea de Pré-Requisitos 

INSERT INTO pre_req (cod_disc, cod_pre, id_curso) VALUES 
    ("DM75", "DM72", 6),
    ("DM90", "DM72", 6),
    ("DM77", "DM80", 5),
    ("DM84", "DM83", 6),
    ("DM83", "DM82", 6),
    ("DM84", "DM75", 6);

-- matricula de aluno novo
START TRANSACTION;

INSERT INTO pessoa (cpf, nome, genero, d_nasc, email, UF) VALUES
    ("535.074.559-00", "Jon Snow", "Masculino", "1986-12-03", "jon.snow@winterfell.com", "BA");
INSERT INTO telefone (cpf_pessoa, telefone) VALUES
    ("535.074.559-00", "telefone");
INSERT INTO estudante (cpf) VALUES
    ("535.074.559-00");
INSERT INTO est_grad (cpf, id_curso, per_entrada) VALUES
    ("535.074.559-00", 5, "2021.1");

COMMIT;