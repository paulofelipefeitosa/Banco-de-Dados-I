

/* Linguaguens */
INSERT INTO Linguagens VALUES ('Ruby')
INSERT INTO Linguagens VALUES ('Java')
INSERT INTO Linguagens VALUES ('Javascript')
INSERT INTO Linguagens VALUES ('Python')
INSERT INTO Linguagens VALUES ('C')
INSERT INTO Linguagens VALUES ('C++')
INSERT INTO Linguagens VALUES ('R')
INSERT INTO Linguagens VALUES ('D')
INSERT INTO Linguagens VALUES ('Pascal')
INSERT INTO Linguagens VALUES ('Cobol')
INSERT INTO Linguagens VALUES ('Fortran')
INSERT INTO Linguagens VALUES ('C#')
INSERT INTO Linguagens VALUES ('Delphi')
INSERT INTO Linguagens VALUES ('PHP')
INSERT INTO Linguagens VALUES ('VisualBasic')
INSERT INTO Linguagens VALUES ('Haskell')
INSERT INTO Linguagens VALUES ('Assembly')
INSERT INTO Linguagens VALUES ('ADA')
INSERT INTO Linguagens VALUES ('GO')
INSERT INTO Linguagens VALUES ('Lua')
INSERT INTO Linguagens VALUES ('Perl')
INSERT INTO Linguagens VALUES ('SQL')
/* Linguaguens */


-- Início do cadastro de Ambientes
INSERT INTO Ambiente VALUES (1, 1);
INSERT INTO Ambiente VALUES (2, 1);
INSERT INTO Ambiente VALUES (3, 1);
INSERT INTO Ambiente VALUES (4, 1);
INSERT INTO Ambiente VALUES (5, 1);

INSERT INTO Ambiente VALUES (1, 2);
INSERT INTO Ambiente VALUES (2, 2);
INSERT INTO Ambiente VALUES (3, 2);
INSERT INTO Ambiente VALUES (4, 2);
INSERT INTO Ambiente VALUES (5, 2);

INSERT INTO Ambiente VALUES (1, 3);
INSERT INTO Ambiente VALUES (2, 3);
INSERT INTO Ambiente VALUES (3, 3);
INSERT INTO Ambiente VALUES (4, 3);
INSERT INTO Ambiente VALUES (5, 3);

INSERT INTO Ambiente VALUES (1, 4);
INSERT INTO Ambiente VALUES (2, 4);
INSERT INTO Ambiente VALUES (3, 4);
INSERT INTO Ambiente VALUES (4, 4);
INSERT INTO Ambiente VALUES (5, 4);

INSERT INTO Ambiente VALUES (1, 5);
INSERT INTO Ambiente VALUES (2, 5);
INSERT INTO Ambiente VALUES (3, 5);
INSERT INTO Ambiente VALUES (4, 5);
INSERT INTO Ambiente VALUES (5, 5);
-- Fim do cadastro de Ambientes


-- Início de cadastro de Equipamentos
INSERT INTO Equipamento VALUES (1, 2009, 50, 'Telefone fixo com display de chamada');
INSERT INTO Equipamento VALUES (2, 2010, 30, 'Computador com Processador AMD e 8 GB de Memoria');
INSERT INTO Equipamento VALUES (3, 2011, 15, 'Mesa para Desktop com 1 lugar');
INSERT INTO Equipamento VALUES (4, 2005, 10, 'Mesa para Desktop com 2 lugares');
INSERT INTO Equipamento VALUES (5, 2015, 5,  'Mesa de Escritorio com 3 lugares');
INSERT INTO Equipamento VALUES (6, 2013, 15, 'Computador com Processador I3 e 4 GB de Memoria');
INSERT INTO Equipamento VALUES (7, 2009, 100, 'Telefone fixo sem display de chamada');
INSERT INTO Equipamento VALUES (8, 2012, 5,   'Computador com Processador I5 e 8 GB de Memoria');
INSERT INTO Equipamento VALUES (9, 2013, 25,  'Computador com Processador I7 e 16 GB de Memoria');
INSERT INTO Equipamento VALUES (10, 2008, 5,  'Computador com Processador DualCore e 8 GB de Memoria');
INSERT INTO Equipamento VALUES (11, 2011, 150, 'Cadeira de Escritorio Executiva');
INSERT INTO Equipamento VALUES (12, 2011, 10,  'Cadeira de Escritorio Presidencial');
INSERT INTO Equipamento VALUES (13, 2014, 10,  'Mesa de Escritorio em L com 1 Lugar');
INSERT INTO Equipamento VALUES (14, 2010, 200, 'Mouses de uso geral');
INSERT INTO Equipamento VALUES (15, 2010, 150, 'Teclado de uso geral');
INSERT INTO Equipamento VALUES (16, 2012, 30,  'Computador com Processador AMD e 16 GB de Memoria');
INSERT INTO Equipamento VALUES (17, 2007, 22,  'Computador');
INSERT INTO Equipamento VALUES (18, 2008, 13,  'Computador');
-- Fim de cadastro de Equipamentos


-- Inicio de cadastro de Computadores
INSERT INTO Computador VALUES (2, 'Windows', 'AMD', 8);
INSERT INTO Computador VALUES (6, 'Windows', 'I3', 4);
INSERT INTO Computador VALUES (8, 'Ubuntu', 'I5', 8);
INSERT INTO Computador VALUES (9, 'Debian', 'I7', 16);
INSERT INTO Computador VALUES (10, 'Windows', 'DualCore', 8);
INSERT INTO Computador VALUES (16, 'FreeBSD', 'AMD', 16);
INSERT INTO Computador VALUES (17, NULL, NULL, NULL);
INSERT INTO Computador VALUES (18, NULL, NULL, NULL);
-- Fim de cadastro de Computadores


-- Inicio de cadastro de Mesas
INSERT INTO Mesa VALUES (3, 1)
INSERT INTO Mesa VALUES (4, 2)
INSERT INTO Mesa VALUES (5, 3)
INSERT INTO Mesa VALUES (13, 1)
-- Fim de cadastro de Mesas


-- Início de cadastro de Equipes
INSERT INTO Equipe VALUES (2020, 'CID-10')
INSERT INTO Equipe VALUES (33, 'Kosaraju')
INSERT INTO Equipe VALUES (75, 'Jedi')
INSERT INTO Equipe VALUES (101, 'Shield')
INSERT INTO Equipe VALUES (82, 'Sigma')
INSERT INTO Equipe VALUES (10, 'Birimbau')
INSERT INTO Equipe VALUES (4, 'Sua Mae')
INSERT INTO Equipe VALUES (20, 'Atecubanos')
-- Fim de cadastro de Equipes


-- Inicio de cadastro de Cargo
INSERT INTO Cargo VALUES ('Chefe', 10500.25)
INSERT INTO Cargo VALUES ('Executivo', 12047.83)
INSERT INTO Cargo VALUES ('CEO', 22386.00)
INSERT INTO Cargo VALUES ('Servicos Gerais', 1035.50)
INSERT INTO Cargo VALUES ('Secretaria', 2034.00)
INSERT INTO Cargo VALUES ('Desenvolvedor', 7300.40)
INSERT INTO Cargo VALUES ('Chefe', 10500.25)
INSERT INTO Cargo VALUES ('Contador', 5350.71)
INSERT INTO Cargo VALUES ('Administrativo', 2500.00)
INSERT INTO Cargo VALUES ('Tecnico', 4347.98)
INSERT INTO Cargo VALUES ('Consultor', 6200.00)
INSERT INTO Cargo VALUES ('Estagiario', 666.00)
INSERT INTO Cargo VALUES ('Assistente', 2198.33)
-- Fim de cadastro de Cargo


-- Inicio de cadastro de Departamento
INSERT INTO Departamento VALUES ('Financeiro', 'financeiro@softsa.com', '32235439', NULL, NULL, 1, 1);
INSERT INTO Departamento VALUES ('Administrativo', 'adm@softsa.com', '39097909', '35675378', '39768610', 3, 3);
INSERT INTO Departamento VALUES ('Projetos', 'projeto@softsa.com', '32690252', '30984809', NULL, 4, 5);
INSERT INTO Departamento VALUES ('Desenvolvimento', 'desenvolvimento@softsa.com', '31341618', '35198530', NULL, 2, 4);
INSERT INTO Departamento VALUES ('Recursos Humanos', 'recurhuman@softsa.com', '33396453', '37875283', NULL, 5, 1);
INSERT INTO Departamento VALUES ('Consultoria', 'consultoria@softsa.com', '36425236', '32395412', NULL, 1, 3);
INSERT INTO Departamento VALUES ('Marketing', 'marketing@softsa.com', NULL, NULL, NULL, 2, 5);
-- Fim de cadastro de Departamento


-- Inicio de cadastro de Cliente
INSERT INTO Cliente VALUES(5254, 'Adjamilton Junior', 'Francisco Rodrigues Junior', '18205590', 'Granja Alvorada', 233, 'adjjr@gmail.com', '617691649', NULL, NULL)
INSERT INTO Cliente VALUES(6391, 'Weslley Santos Cunha', 'Tapaxanas', '09951400', 'Piraporinha', 25, 'weslley.c.santos@ieee.com', '128083614', '981587970', NULL)
INSERT INTO Cliente VALUES(8136, 'Rychard Guedes Nunes', 'Sérgio Fleury', '05305060', 'Vila Leopoldina', 10, 'ryry.guedes@gmail.com', '373052759', '621017021', '201246749')
INSERT INTO Cliente VALUES(484, 'Claudio Djonatha', 'Anhaia Mello', '03154100', 'Vila Prudente', 59, 'claudiodj@lavid.ufpb.br', '715950851', '594753013', '382675190')
INSERT INTO Cliente VALUES(93, 'José Raimundo Barbosa', 'São Manoel', '67216381', 'Bairro Novo', 5, 'ze.mais@gmail.com', 'NULL', 'NULL', 'NULL')
INSERT INTO Cliente VALUES(22, 'Sarah Yasmini', 'Rua das Neves', '72362768', 'Castelo Branco', 38, 'sarah.korea@hotmail.com', '742473863', 'NULL', 'NULL')
INSERT INTO Cliente VALUES(514, 'Talita Valeria da Matta', 'Vital de Negreiros', '58700245', 'Valentina', 82, 'tata.damatta@hotmail.com', '964909894', '925759530', 'NULL')
INSERT INTO Cliente VALUES(3165, 'MEU ambiente', 'General Glicério', '22245120', 'Laranjeiras', 123, 'atendimento@meuambiente.com', '569294095', '453748398', '680951218')
INSERT INTO Cliente VALUES(4043, 'Voe Prime', 'Abrahão Jabour', '22783135', 'Recreio dos Bandeirantes', 187, 'adm@voeprime.com', '654790459', '913652637', 'NULL')
INSERT INTO Cliente VALUES(93, 'Sr. Sabor', 'Altaneira', '23279826', 'Mandacaru', 16, 'adm@srsabor.com', '626236062', '280230427', '734502495')
INSERT INTO Cliente VALUES(921, 'Nexbuzz', 'Fradique Coutinho', '58070280', 'Geisel', 5, 'rodrigues@nexbuzz.com', '940625074', '976761952', 'NULL')
INSERT INTO Cliente VALUES(704, 'Innoshare', 'Álvaro Alvim', '46165832', 'Mangabeira', 5, 'ze.mais@gmail.com', '627847432', '973642304', 'NULL')
INSERT INTO Cliente VALUES(6420, 'Plashare', 'Reinaldo do Cavalho Marinho', '68431563', 'Bessa', 5, 'ze.mais@gmail.com', '308482521', '949745864', 'NULL')
INSERT INTO Cliente VALUES(9728, 'BravoBR', 'Rua dos Prazeres', '91856929', 'Tambau', 5, 'ze.mais@gmail.com', '382986751', '848542371', 'NULL')
-- Fim de cadastro de Cliente


-- Inicio de cadastro de Pessoa Fisica
INSERT INTO Fisica VALUES(5254, '04391540819', '429434121', 'M', 'S', '13/04/1983')
INSERT INTO Fisica VALUES(6391, '73757129806', '2977269', 'M', 'C',
'24/08/1996')
INSERT INTO Fisica VALUES(8136, '00913955264', '403289440', 'M', 'SE', '05/02/1993')
INSERT INTO Fisica VALUES(484, '37565205443', '418757896', 'M', 'V', '15/12/1996')
INSERT INTO Fisica VALUES(93, '32643673786', '911225341', 'M', 'D', '25/11/1966')
INSERT INTO Fisica VALUES(22, '03016203006', '244799088', 'F', 'S', '28/06/1970')
INSERT INTO Fisica VALUES(514, '40049590391', '212817267', 'F', 'C', '18/05/1983')
-- Fim de cadastro de Pessoa Fisica


-- Inicio de Cadastro de Pessoa Juridica
INSERT INTO Juridica VALUES(3165, '79778135000132', '822802244')
INSERT INTO Juridica VALUES(4043, '56841841000186', '523681950')
INSERT INTO Juridica VALUES(93, '42874234000108', '776170910')
INSERT INTO Juridica VALUES(921, '05414311000110', '083679812')
INSERT INTO Juridica VALUES(704, '01336106000123', '632708255')
INSERT INTO Juridica VALUES(6420, '72802731000161', '513931376')
INSERT INTO Juridica VALUES(9728, '04832254000127', '897898907')
-- Fim de Cadastro de Pessoa Juridica


-- Início do cadastro de Funcionários
INSERT Funcionario VALUES (1, 'Antônio Caldeira Guedes', '4498135085', '856674636999', 'M', 'S', 'Rua das Aspargatas', '50800970', 'Expedicionários', 60, 'antônio_caldeira_guedes@softsa.com', '9125345345', '1448933856', NULL, 10, NULL);
INSERT Funcionario VALUES (2, 'Edmilson Pontes Guedes', '264118492528', '13903265632', 'M', 'C', 'Rua das Plantas', '50300420', 'Bessa', 522, 'edmilson_pontes_guedes@softsa.com', '8262226838', '8048289035', NULL, 33, NULL);
INSERT Funcionario VALUES (3, 'Manoel Caldeira Lima', '132844756162', '271929000355', 'M', 'C', 'Rua das Alcácias', '50400530', 'Expedicionários', 812, 'manoel_caldeira_lima@softsa.com', '7938621538', '8784238838', '309105851', 33, NULL);
INSERT Funcionario VALUES (4, 'Manoel Onofre Daltro', '485704055697', '553782561490', 'M', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 973, 'manoel_onofre_daltro@softsa.com', NULL, NULL, NULL, 75, NULL);
INSERT Funcionario VALUES (5, 'João Soares Medeiros Rodrigues', '162891555707', '222945873468', 'M', 'C', 'Rua das Aspargatas', '50800970', 'Expedicionários', 684, 'joão_soares_medeiros_rodrigues@softsa.com', '1803603723', '5440158520', '5416542439', NULL, NULL);
INSERT Funcionario VALUES (6, 'Antônio Lima Pontes Dutra', '764788292333', '207166707930', 'M', 'S', 'Rua das Plantas', '50300420', 'Bessa', 5, 'antônio_lima_pontes_dutra@softsa.com', '4070143415', '8769029249', NULL, 101, NULL);
INSERT Funcionario VALUES (7, 'Marina Souza Rodrigues Menezes', '33090668675', '562261725431', 'F', 'C', 'Rua Experidião Rosas', '50600750', 'Manaíra', 383, 'marina_souza_rodrigues_menezes@softsa.com', NULL, NULL, NULL, 75, NULL);
INSERT Funcionario VALUES (8, 'João Guerra Guerra', '766269810758', '147745352353', 'M', 'S', 'Avenida Guarabira', '50500640', 'Torre', 361, 'joão_guerra_guerra@softsa.com', '2585852430', '7551023675', NULL, 10, NULL);
INSERT Funcionario VALUES (9, 'Denis Souza Menezes', '348543757342', '8508769009', 'M', 'C', 'Avenida Guarabira', '50500640', 'Torre', 508, 'denis_souza_menezes@softsa.com', '3942419766', '5612146432', NULL, 4, NULL);
INSERT Funcionario VALUES (10, 'Antônio Caldeira Guerra', '315398035658', '66698099980', 'M', 'S', 'Rua Experidião Rosas', '50600750', 'Manaíra', 795, 'antônio_caldeira_guerra@softsa.com', '1464557575', '1450833528', '4179727644', 33, NULL);
INSERT Funcionario VALUES (11, 'Priscila Caldeira Daltro Rodrigues', '664028537490', '85453090224', 'F', 'S', 'Rua das Aspargatas', '50800970', 'Expedicionários', 493, 'priscila_caldeira_daltro_rodrigues@softsa.com', '3369177638', NULL, NULL, 75, NULL);
INSERT Funcionario VALUES (12, 'Franscio Medeiros Guedes Caldeira', '879809010733', '30532626838', 'M', 'S', 'Rua das Plantas', '50300420', 'Bessa', 744, 'franscio_medeiros_guedes_caldeira@softsa.com', '8982909141', NULL, NULL, 33, NULL);
INSERT Funcionario VALUES (13, 'Giovana Guedes Menezes', '640609071815', '22594933713', 'F', 'S', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 811, 'giovana_guedes_menezes@softsa.com', '60440816', '6736836705', NULL, 75, NULL);
INSERT Funcionario VALUES (14, 'Giovana Medeiros Dutra Lima', '319093935670', '192704440629', 'F', 'C', 'Avenida Guarabira', '50500640', 'Torre', 517, 'giovana_medeiros_dutra_lima@softsa.com', '7708363001', NULL, NULL, 2020, NULL);
INSERT Funcionario VALUES (15, 'Denis Bezerra Soares Soares', '966905387955', '911562508554', 'M', 'C', 'Rua das Alcácias', '50400530', 'Expedicionários', 796, 'denis_bezerra_soares_soares@softsa.com', '3177661792', '4784441743', '1113370333', NULL, NULL);
INSERT Funcionario VALUES (16, 'Luana Medeiros Medeiros Rodrigues', '380843169438', '104973489622', 'F', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 233, 'luana_medeiros_medeiros_rodrigues@softsa.com', '5971117949', '7464681301', NULL, 2020, NULL);
INSERT Funcionario VALUES (17, 'João Silva Silva Lima', '399447821425', '443181939724', 'M', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 417, 'joão_silva_silva_lima@softsa.com', '2312012839', NULL, NULL, 82, NULL);
INSERT Funcionario VALUES (18, 'Felipe Guedes Souza Onofre', '191850901839', '628820754543', 'M', 'C', 'Rua das Aspargatas', '50800970', 'Expedicionários', 836, 'felipe_guedes_souza_onofre@softsa.com', '9632472239', '4266062450', NULL, 10, NULL);
INSERT Funcionario VALUES (19, 'Raíssa Caldeira Caldeira Lima', '964102487134', '151753448899', 'F', 'S', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 977, 'raíssa_caldeira_caldeira_lima@softsa.com', '1903474504', '5204467000', '8938931871', 75, NULL);
INSERT Funcionario VALUES (20, 'Lucas Silva Rodrigues Rodrigues', '274337471109', '635373563892', 'M', 'C', 'Rua das Plantas', '50300420', 'Bessa', 768, 'lucas_silva_rodrigues_rodrigues@softsa.com', '7672414927', '8301275313', NULL, 33, NULL);
INSERT Funcionario VALUES (21, 'Edmilson Guedes Medeiros Lima', '26306364887', '302999606084', 'M', 'C', 'Rua Rosas Floridas', '50200310', 'Manaíra', 225, 'edmilson_guedes_medeiros_lima@softsa.com', '9017894918', '6427972267', '7971340546', NULL, NULL);
INSERT Funcionario VALUES (22, 'Luana Pontes Dutra', '317977399575', '176563603191', 'F', 'C', 'Rua das Plantas', '50300420', 'Bessa', 681, 'luana_pontes_dutra@softsa.com', '1793732015', NULL, NULL, 75, NULL);
INSERT Funcionario VALUES (23, 'Rodolfo Guedes Dutra', '122946423523', '958062888453', 'M', 'S', 'Avenida Guarabira', '50500640', 'Torre', 594, 'rodolfo_guedes_dutra@softsa.com', '1947728473', '7047009933', '1417915332', 101, NULL);
INSERT Funcionario VALUES (24, 'Rafaela Bezerra Medeiros Medeiros', '957123358222', '434791470151', 'F', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 649, 'rafaela_bezerra_medeiros_medeiros@softsa.com', '8905500268', '3149876806', '4934604604', 2020, NULL);
INSERT Funcionario VALUES (25, 'Manoel Dutra Soares', '193828510052', '758020593155', 'M', 'C', 'Rua das Aspargatas', '50800970', 'Expedicionários', 32, 'manoel_dutra_soares@softsa.com', '3931750917', '5367372784', NULL, 75, NULL);
INSERT Funcionario VALUES (26, 'Petrônio Rodrigues Soares', '446307644008', '548313388946', 'M', 'C', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 711, 'petrônio_rodrigues_soares@softsa.com', '6758606401', '7653605750', NULL, 101, NULL);
INSERT Funcionario VALUES (27, 'João Pontes Medeiros Guerra', '297593487947', '898091570226', 'M', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 185, 'joão_pontes_medeiros_guerra@softsa.com', NULL, NULL, NULL, 82, NULL);
INSERT Funcionario VALUES (28, 'Priscila Medeiros Soares', '812270701200', '597585148205', 'F', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 32, 'priscila_medeiros_soares@softsa.com', '7625689400', NULL, NULL, 10, NULL);
INSERT Funcionario VALUES (29, 'Felipe Soares Bezerra Pontes', '52272635333', '259105508595', 'M', 'C', 'Rua Rosas Floridas', '50200310', 'Manaíra', 424, 'felipe_soares_bezerra_pontes@softsa.com', '5078674727', '8572347606', NULL, 75, NULL);
INSERT Funcionario VALUES (30, 'Giovana Daltro Onofre', '893481825574', '77945664759', 'F', 'S', 'Rua das Aspargatas', '50800970', 'Expedicionários', 755, 'giovana_daltro_onofre@softsa.com', '8968110444', NULL, NULL, 33, NULL);
INSERT Funcionario VALUES (31, 'Priscila Onofre Soares Pontes', '142407846252', '576049508150', 'F', 'S', 'Rua Augusto dos Anjos', '50100200', 'Torre', 493, 'priscila_onofre_soares_pontes@softsa.com', '7488650013', NULL, NULL, 20, NULL);
INSERT Funcionario VALUES (32, 'Franscio Dutra Bezerra Soares', '491880960617', '734054828123', 'M', 'S', 'Rua das Alcácias', '50400530', 'Expedicionários', 130, 'franscio_dutra_bezerra_soares@softsa.com', '5875166388', NULL, NULL, 101, NULL);
INSERT Funcionario VALUES (33, 'Camila Daltro Lima', '462467314644', '766683121644', 'F', 'C', 'Rua Rosas Floridas', '50200310', 'Manaíra', 327, 'camila_daltro_lima@softsa.com', '9228747590', '8444856208', NULL, 10, NULL);
INSERT Funcionario VALUES (34, 'Antônio Daltro Guedes Lima', '994501354361', '449461069647', 'M', 'C', 'Rua das Alcácias', '50400530', 'Expedicionários', 79, 'antônio_daltro_guedes_lima@softsa.com', '2774019692', '7505736951', '1392265714', 4, NULL);
INSERT Funcionario VALUES (35, 'Paula Rodrigues Guedes Lima', '30658189908', '991090475845', 'F', 'S', 'Rua das Plantas', '50300420', 'Bessa', 996, 'paula_rodrigues_guedes_lima@softsa.com', '8749010505', '7189111354', NULL, 101, NULL);
INSERT Funcionario VALUES (36, 'Camila Dutra Medeiros', '873883388543', '16025880384', 'F', 'C', 'Rua das Alcácias', '50400530', 'Expedicionários', 778, 'camila_dutra_medeiros@softsa.com', NULL, NULL, NULL, 101, NULL);
INSERT Funcionario VALUES (37, 'Giovana Silva Pontes', '212138917085', '586515362212', 'F', 'C', 'Rua Experidião Rosas', '50600750', 'Manaíra', 560, 'giovana_silva_pontes@softsa.com', '3258196213', '9382117076', '5326536271', NULL, NULL);
INSERT Funcionario VALUES (38, 'Giovana Silva Pontes', '11636207052', '42654171329', 'F', 'S', 'Rua das Plantas', '50300420', 'Bessa', 26, 'giovana_silva_pontes@softsa.com', '2363973546', NULL, NULL, 82, NULL);
INSERT Funcionario VALUES (39, 'Priscila Pontes Onofre Caldeira', '768713725742', '938461190211', 'F', 'S', 'Rua Experidião Rosas', '50600750', 'Manaíra', 690, 'priscila_pontes_onofre_caldeira@softsa.com', NULL, NULL, NULL, 33, NULL);
INSERT Funcionario VALUES (40, 'Louise Guerra Pontes Souza', '866807825257', '217243723012', 'F', 'S', 'Avenida Guarabira', '50500640', 'Torre', 774, 'louise_guerra_pontes_souza@softsa.com', '8765496806', '548643628', NULL, 4, NULL);
INSERT Funcionario VALUES (41, 'Antônio Soares Dutra Caldeira', '935656111692', '233229014361', 'M', 'C', 'Rua Rosas Floridas', '50200310', 'Manaíra', 923, 'antônio_soares_dutra_caldeira@softsa.com', '9394973603', NULL, NULL, 82, NULL);
INSERT Funcionario VALUES (42, 'Luana Rodrigues Guedes Bezerra', '452514682861', '147648716899', 'F', 'C', 'Rua das Aspargatas', '50800970', 'Expedicionários', 186, 'luana_rodrigues_guedes_bezerra@softsa.com', '5745797294', '7832827806', NULL, 33, NULL);
INSERT Funcionario VALUES (43, 'Antônio Soares Dutra', '947758904460', '864867715948', 'M', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 322, 'antônio_soares_dutra@softsa.com', '8954282762', '6406959128', NULL, 33, NULL);
INSERT Funcionario VALUES (44, 'Manoel Guerra Souza Medeiros', '21990008726', '325361222301', 'M', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 439, 'manoel_guerra_souza_medeiros@softsa.com', NULL, NULL, NULL, 4, NULL);
INSERT Funcionario VALUES (45, 'Paula Caldeira Rodrigues Medeiros', '549305074169', '800034781743', 'F', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 830, 'paula_caldeira_rodrigues_medeiros@softsa.com', NULL, NULL, NULL, 4, NULL);
INSERT Funcionario VALUES (46, 'Camila Medeiros Soares Lima', '796993597267', '403608160805', 'F', 'S', 'Rua Experidião Rosas', '50600750', 'Manaíra', 243, 'camila_medeiros_soares_lima@softsa.com', NULL, NULL, NULL, 82, NULL);
INSERT Funcionario VALUES (47, 'Marina Guerra Soares', '854295732241', '139667232312', 'F', 'S', 'Rua Experidião Rosas', '50600750', 'Manaíra', 118, 'marina_guerra_soares@softsa.com', '8788512225', '6450187446', NULL, 101, NULL);
INSERT Funcionario VALUES (48, 'Edmilson Caldeira Daltro', '506610736818', '76254061779', 'M', 'S', 'Rua das Alcácias', '50400530', 'Expedicionários', 325, 'edmilson_caldeira_daltro@softsa.com', '5748565352', NULL, NULL, 101, NULL);
INSERT Funcionario VALUES (49, 'Antônio Bezerra Daltro Silva', '839747382385', '750981237772', 'M', 'S', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 216, 'antônio_bezerra_daltro_silva@softsa.com', '9177007898', '6687191370', '2267474721', 75, NULL);
INSERT Funcionario VALUES (50, 'Laís Dutra Silva Lima', '943305560718', '945208008600', 'F', 'S', 'Rua das Alcácias', '50400530', 'Expedicionários', 550, 'laís_dutra_silva_lima@softsa.com', '1161801545', '7731798583', NULL, 10, NULL);
INSERT Funcionario VALUES (51, 'Carolina Onofre Caldeira', '919932292913', '523317574013', 'F', 'C', 'Rua Experidião Rosas', '50600750', 'Manaíra', 943, 'carolina_onofre_caldeira@softsa.com', '9699923255', '8877626235', '3926001152', 2020, NULL);
INSERT Funcionario VALUES (52, 'Marina Lima Medeiros', '697159803612', '23931463796', 'F', 'C', 'Rua das Aspargatas', '50800970', 'Expedicionários', 306, 'marina_lima_medeiros@softsa.com', NULL, NULL, NULL, 33, NULL);
INSERT Funcionario VALUES (53, 'Franscio Guedes Rodrigues', '29690739636', '411000319015', 'M', 'C', 'Rua das Plantas', '50300420', 'Bessa', 311, 'franscio_guedes_rodrigues@softsa.com', '2599835184', '647731324', '2995368259', 4, NULL);
INSERT Funcionario VALUES (54, 'Rafael Dutra Bezerra Guedes', '152750702490', '861476260726', 'M', 'S', 'Rua Experidião Rosas', '50600750', 'Manaíra', 290, 'rafael_dutra_bezerra_guedes@softsa.com', NULL, NULL, NULL, 4, NULL);
INSERT Funcionario VALUES (55, 'Lucas Guedes Silva Caldeira', '586792362498', '810677122475', 'M', 'S', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 327, 'lucas_guedes_silva_caldeira@softsa.com', NULL, NULL, NULL, NULL, NULL);
INSERT Funcionario VALUES (56, 'Rodolfo Medeiros Silva Guerra', '711823220966', '100900053982', 'M', 'S', 'Rua das Plantas', '50300420', 'Bessa', 26, 'rodolfo_medeiros_silva_guerra@softsa.com', '9977476822', NULL, NULL, 2020, NULL);
INSERT Funcionario VALUES (57, 'Edmilson Guerra Pontes Silva', '348204497148', '815557738137', 'M', 'S', 'Rua das Aspargatas', '50800970', 'Expedicionários', 538, 'edmilson_guerra_pontes_silva@softsa.com', '7752774741', '5455254995', NULL, 33, NULL);
INSERT Funcionario VALUES (58, 'Rafaela Bezerra Menezes Medeiros', '605915799278', '748700294945', 'F', 'C', 'Rua das Aspargatas', '50800970', 'Expedicionários', 116, 'rafaela_bezerra_menezes_medeiros@softsa.com', '9139761903', NULL, NULL, 10, NULL);
INSERT Funcionario VALUES (59, 'João Menezes Guerra', '949526302862', '973300517425', 'M', 'C', 'Avenida Guarabira', '50500640', 'Torre', 391, 'joão_menezes_guerra@softsa.com', '9582716997', '3604847142', NULL, 101, NULL);
INSERT Funcionario VALUES (60, 'Louise Onofre Rodrigues Bezerra', '656894680720', '955910194577', 'F', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 299, 'louise_onofre_rodrigues_bezerra@softsa.com', '7713570591', '4066871828', '1893171768', 10, NULL);
INSERT Funcionario VALUES (61, 'Luana Lima Dutra', '390152763293', '152143533525', 'F', 'S', 'Rua Augusto dos Anjos', '50100200', 'Torre', 798, 'luana_lima_dutra@softsa.com', '2079921240', '6212044183', NULL, 10, NULL);
INSERT Funcionario VALUES (62, 'Laís Caldeira Menezes Guerra', '391175125542', '98933244580', 'F', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 404, 'laís_caldeira_menezes_guerra@softsa.com', '668751080', '3547068967', NULL, 82, NULL);
INSERT Funcionario VALUES (63, 'Manoel Daltro Lima', '663253862', '817343622017', 'M', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 345, 'manoel_daltro_lima@softsa.com', '2970453008', '7134937066', '3961440294', 75, NULL);
INSERT Funcionario VALUES (64, 'Manoel Daltro Dutra Bezerra', '5487500829', '207670917507', 'M', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 607, 'manoel_daltro_dutra_bezerra@softsa.com', '3661138759', '5077826807', NULL, 10, NULL);
INSERT Funcionario VALUES (65, 'Rafael Menezes Pontes', '691458247926', '152974369561', 'M', 'C', 'Rua Rosas Floridas', '50200310', 'Manaíra', 580, 'rafael_menezes_pontes@softsa.com', NULL, NULL, NULL, NULL, NULL);
INSERT Funcionario VALUES (66, 'Laís Lima Onofre Rodrigues', '492547359542', '18424223067', 'F', 'S', 'Rua Experidião Rosas', '50600750', 'Manaíra', 88, 'laís_lima_onofre_rodrigues@softsa.com', '8871333558', NULL, NULL, 2020, NULL);
INSERT Funcionario VALUES (67, 'Franscio Souza Guerra Caldeira', '496461134632', '744091086967', 'M', 'S', 'Rua Augusto dos Anjos', '50100200', 'Torre', 683, 'franscio_souza_guerra_caldeira@softsa.com', NULL, NULL, NULL, 75, NULL);
INSERT Funcionario VALUES (68, 'Giovana Guerra Lima Daltro', '264162576624', '52736122742', 'F', 'S', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 343, 'giovana_guerra_lima_daltro@softsa.com', '6113241562', NULL, NULL, 4, NULL);
INSERT Funcionario VALUES (69, 'Lucas Silva Bezerra Silva', '600432298819', '174625426506', 'M', 'C', 'Rua das Plantas', '50300420', 'Bessa', 985, 'lucas_silva_bezerra_silva@softsa.com', '6561413096', '8725205999', NULL, NULL, NULL);
INSERT Funcionario VALUES (70, 'Antônio Bezerra Daltro Silva', '207544752293', '413061840738', 'M', 'C', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 791, 'antônio_bezerra_daltro_silva@softsa.com', '5268649329', '696758258', NULL, 75, NULL);
INSERT Funcionario VALUES (71, 'Carolina Bezerra Souza', '634926678349', '565559115158', 'F', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 871, 'carolina_bezerra_souza@softsa.com', '9753319663', '6427551050', NULL, 10, NULL);
INSERT Funcionario VALUES (72, 'Paula Bezerra Guerra', '644903602996', '945406273770', 'F', 'C', 'Rua das Alcácias', '50400530', 'Expedicionários', 713, 'paula_bezerra_guerra@softsa.com', NULL, NULL, NULL, 4, NULL);
INSERT Funcionario VALUES (73, 'Rafaela Souza Onofre', '51413168162', '760483989805', 'F', 'C', 'Avenida Guarabira', '50500640', 'Torre', 595, 'rafaela_souza_onofre@softsa.com', '4575551546', NULL, NULL, 101, NULL);
INSERT Funcionario VALUES (74, 'Antônio Soares Bezerra', '498962760523', '149675898945', 'M', 'C', 'Rua Experidião Rosas', '50600750', 'Manaíra', 572, 'antônio_soares_bezerra@softsa.com', '1880458359', NULL, NULL, 2020, NULL);
INSERT Funcionario VALUES (75, 'Antônio Guerra Guedes Lima', '172559178113', '335597728816', 'M', 'C', 'Rua das Plantas', '50300420', 'Bessa', 236, 'antônio_guerra_guedes_lima@softsa.com', '7506731437', NULL, NULL, 4, NULL);
INSERT Funcionario VALUES (76, 'João Guerra Guerra Rodrigues', '746839929783', '143692388358', 'M', 'C', 'Rua Experidião Rosas', '50600750', 'Manaíra', 649, 'joão_guerra_guerra_rodrigues@softsa.com', NULL, NULL, NULL, 82, NULL);
INSERT Funcionario VALUES (77, 'Rebeca Silva Caldeira Rodrigues', '462981801605', '156988565375', 'F', 'S', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 500, 'rebeca_silva_caldeira_rodrigues@softsa.com', '1729989394', '7280260229', '2939824120', 33, NULL);
INSERT Funcionario VALUES (78, 'Louise Lima Soares', '186205510400', '107299177826', 'F', 'C', 'Rua das Alcácias', '50400530', 'Expedicionários', 788, 'louise_lima_soares@softsa.com', '3755524891', '1639694812', NULL, 33, NULL);
INSERT Funcionario VALUES (79, 'Rafaela Onofre Menezes', '6156101932', '312270911732', 'F', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 739, 'rafaela_onofre_menezes@softsa.com', '6977411329', '9698334934', NULL, NULL, NULL);
INSERT Funcionario VALUES (80, 'Rodolfo Soares Guedes Soares', '317287373233', '382168081836', 'M', 'C', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 574, 'rodolfo_soares_guedes_soares@softsa.com', '2299619450', '2163793564', NULL, 20, NULL);
INSERT Funcionario VALUES (81, 'Manoel Lima Soares', '220333947866', '881728704677', 'M', 'S', 'Rua das Plantas', '50300420', 'Bessa', 868, 'manoel_lima_soares@softsa.com', '2223713963', NULL, NULL, 20, NULL);
INSERT Funcionario VALUES (82, 'Edmilson Guedes Caldeira Menezes', '874933721013', '913076419469', 'M', 'C', 'Rua Rosas Floridas', '50200310', 'Manaíra', 297, 'edmilson_guedes_caldeira_menezes@softsa.com', NULL, NULL, NULL, NULL, NULL);
INSERT Funcionario VALUES (83, 'Rafaela Soares Daltro Daltro', '30822944708', '904731287834', 'F', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 306, 'rafaela_soares_daltro_daltro@softsa.com', NULL, NULL, NULL, 82, NULL);
INSERT Funcionario VALUES (84, 'Felipe Rodrigues Lima', '762541411156', '331102797208', 'M', 'S', 'Rua das Aspargatas', '50800970', 'Expedicionários', 790, 'felipe_rodrigues_lima@softsa.com', NULL, NULL, NULL, 2020, NULL);
INSERT Funcionario VALUES (85, 'Raíssa Medeiros Daltro Soares', '325656826343', '295257114743', 'F', 'S', 'Rua das Aspargatas', '50800970', 'Expedicionários', 421, 'raíssa_medeiros_daltro_soares@softsa.com', '6019907648', '1259572531', '9621720700', 4, NULL);
INSERT Funcionario VALUES (86, 'Rodolfo Guerra Soares Daltro', '665567170290', '922927382973', 'M', 'S', 'Rua Augusto dos Anjos', '50100200', 'Torre', 219, 'rodolfo_guerra_soares_daltro@softsa.com', '7752464692', '3681056523', NULL, NULL, NULL);
INSERT Funcionario VALUES (87, 'Carolina Guerra Onofre', '552549886332', '305276760463', 'F', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 770, 'carolina_guerra_onofre@softsa.com', '3751911298', '9015395264', '7254352499', 33, NULL);
INSERT Funcionario VALUES (88, 'Giovana Bezerra Menezes Soares', '962287752388', '127476687711', 'F', 'C', 'Avenida Guarabira', '50500640', 'Torre', 611, 'giovana_bezerra_menezes_soares@softsa.com', NULL, NULL, NULL, 101, NULL);
INSERT Funcionario VALUES (89, 'Edmilson Dutra Menezes Daltro', '770478844618', '734851161432', 'M', 'S', 'Avenida Guarabira', '50500640', 'Torre', 168, 'edmilson_dutra_menezes_daltro@softsa.com', '8847772915', '3214888490', NULL, 101, NULL);
INSERT Funcionario VALUES (90, 'Raíssa Guerra Soares', '99692313856', '280048716909', 'F', 'C', 'Rua das Plantas', '50300420', 'Bessa', 178, 'raíssa_guerra_soares@softsa.com', NULL, NULL, NULL, 75, NULL);
INSERT Funcionario VALUES (91, 'Antônio Guerra Menezes Dutra', '912888819546', '545340989073', 'M', 'C', 'Rua das Plantas', '50300420', 'Bessa', 256, 'antônio_guerra_menezes_dutra@softsa.com', '9367191922', NULL, NULL, 75, NULL);
INSERT Funcionario VALUES (92, 'Rodolfo Bezerra Dutra', '778989824619', '348939550459', 'M', 'S', 'Rua Rosas Floridas', '50200310', 'Manaíra', 418, 'rodolfo_bezerra_dutra@softsa.com', '6567834010', NULL, NULL, 4, NULL);
INSERT Funcionario VALUES (93, 'Rafael Menezes Souza', '334670791847', '221795149236', 'M', 'C', 'Rua das Aspargatas', '50800970', 'Expedicionários', 409, 'rafael_menezes_souza@softsa.com', '4798029478', '9923454650', '3729483689', 4, NULL);
INSERT Funcionario VALUES (94, 'Rebeca Onofre Lima Lima', '381958325985', '740587400986', 'F', 'C', 'Avenida Guarabira', '50500640', 'Torre', 268, 'rebeca_onofre_lima_lima@softsa.com', NULL, NULL, NULL, 10, NULL);
INSERT Funcionario VALUES (95, 'Antônio Guedes Lima', '86035302717', '365324634112', 'M', 'S', 'Rua das Plantas', '50300420', 'Bessa', 469, 'antônio_guedes_lima@softsa.com', '7450511733', NULL, NULL, 2020, NULL);
INSERT Funcionario VALUES (96, 'Petrônio Menezes Soares Caldeira', '757740480605', '684334513935', 'M', 'S', 'Rua das Aspargatas', '50800970', 'Expedicionários', 83, 'petrônio_menezes_soares_caldeira@softsa.com', '6958466844', '9808213363', NULL, 4, NULL);
INSERT Funcionario VALUES (97, 'Denis Dutra Guerra', '314774994933', '697470631033', 'M', 'S', 'Rua das Plantas', '50300420', 'Bessa', 729, 'denis_dutra_guerra@softsa.com', '9900035717', '461856370', '7813902189', 82, NULL);
INSERT Funcionario VALUES (98, 'Denis Guerra Guedes', '462201890494', '229801617056', 'M', 'C', 'Rua Augusto dos Anjos', '50100200', 'Torre', 310, 'denis_guerra_guedes@softsa.com', NULL, NULL, NULL, 33, NULL);
INSERT Funcionario VALUES (99, 'Laís Medeiros Dutra', '242093808243', '942261647322', 'F', 'C', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 954, 'laís_medeiros_dutra@softsa.com', '7729263378', NULL, NULL, 20, NULL);
INSERT Funcionario VALUES (100, 'Edmilson Medeiros Daltro', '199915548841', '624039037314', 'M', 'S', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 570, 'edmilson_medeiros_daltro@softsa.com', NULL, NULL, NULL, NULL, NULL);
-- Fim do cadastro de Funcionários


