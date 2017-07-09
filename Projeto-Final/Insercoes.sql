USE PROJETOBD

SET DATEFORMAT dmy

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
INSERT INTO Cargo VALUES ('Chefe', 10500.00)
INSERT INTO Cargo VALUES ('Executivo', 12500.33)
INSERT INTO Cargo VALUES ('CEO', 22000.44)
INSERT INTO Cargo VALUES ('Servicos Gerais', 1035.50)
INSERT INTO Cargo VALUES ('Secretaria', 2034.00)
INSERT INTO Cargo VALUES ('Desenvolvedor', 7300.40)
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
INSERT INTO Departamento VALUES ('Direção Geral', 'dirgeral@softsa.com', '21690157', '45758293', '87502945', 1, 2);
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
INSERT INTO Cliente VALUES(578, 'Sr. Sabor', 'Altaneira', '23279826', 'Mandacaru', 16, 'adm@srsabor.com', '626236062', '280230427', '734502495')
INSERT INTO Cliente VALUES(921, 'Nexbuzz', 'Fradique Coutinho', '58070280', 'Geisel', 5, 'rodrigues@nexbuzz.com', '940625074', '976761952', 'NULL')
INSERT INTO Cliente VALUES(704, 'Innoshare', 'Álvaro Alvim', '46165832', 'Mangabeira', 5, 'innoshare@gmail.com', '627847432', '973642304', 'NULL')
INSERT INTO Cliente VALUES(6420, 'Plashare', 'Reinaldo do Cavalho Marinho', '68431563', 'Bessa', 5, 'atendimento@plashare.com', '308482521', '949745864', 'NULL')
INSERT INTO Cliente VALUES(9728, 'BravoBR', 'Rua dos Prazeres', '91856929', 'Tambau', 5, 'administracao@bravobbr.com', '382986751', '848542371', 'NULL')
-- Fim de cadastro de Cliente


-- Inicio de cadastro de Pessoa Fisica
INSERT INTO Fisica VALUES(5254, '04391540819', '429434121', 'M', 'S', '13/04/1983')
INSERT INTO Fisica VALUES(6391, '73757129806', '2977269', 'M', 'C', '24/08/1996')
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
INSERT INTO Funcionario VALUES (1, 'Antônio Caldeira Guedes', '42014046417', '1527891', 'M', 'S', '24/05/1970', 'Rua das Aspargatas', '50800970', 'Expedicionários', 60, 'antônio_caldeira_guedes@softsa.com', 10, NULL);
INSERT INTO Funcionario VALUES (2, 'Edmilson Pontes Guedes', '66247781300', '1706484', 'M', 'C', '07/07/1998', 'Rua das Plantas', '50300420', 'Bessa', 522, 'edmilson_pontes_guedes@softsa.com', 33, 1);
INSERT INTO Funcionario VALUES (3, 'Manoel Caldeira Lima', '67071380066', '4898585', 'M', 'D', '19/12/1957', 'Rua das Alcácias', '50400530', 'Expedicionários', 812, 'manoel_caldeira_lima@softsa.com', 33, 2);
INSERT INTO Funcionario VALUES (4, 'Manoel Onofre Daltro', '93945932173', '8759421', 'M', 'V', '17/08/1989', 'Rua Augusto dos Anjos', '50100200', 'Torre', 973, 'manoel_onofre_daltro@softsa.com', 75, 3);
INSERT INTO Funcionario VALUES (5, 'João Soares Medeiros Rodrigues', '62964138664', '9475964', 'M', 'C', '15/05/1996', 'Rua das Aspargatas', '50800970', 'Expedicionários', 684, 'joão_soares_medeiros_rodrigues@softsa.com', NULL, NULL);
INSERT INTO Funcionario VALUES (6, 'Antônio Lima Pontes Dutra', '17297565490', '4025063', 'M', 'S', '04/02/1991', 'Rua das Plantas', '50300420', 'Bessa', 5, 'antônio_lima_pontes_dutra@softsa.com', 101, 1);
INSERT INTO Funcionario VALUES (7, 'Marina Souza Rodrigues Menezes', '42001767692', '2835672', 'F', 'C', '16/08/1982', 'Rua Experidião Rosas', '50600750', 'Manaíra', 383, 'marina_souza_rodrigues_menezes@softsa.com', 75, 1);
INSERT INTO Funcionario VALUES (8, 'João Guerra Guerra', '08674161227', '6065767', 'M', 'SE', '16/06/1983', 'Avenida Guarabira', '50500640', 'Torre', 361, 'joão_guerra_guerra@softsa.com', 10, 2);
INSERT INTO Funcionario VALUES (9, 'Denis Souza Menezes', '09009667421', '1759745', 'M', 'D', '16/12/1957', 'Avenida Guarabira', '50500640', 'Torre', 508, 'denis_souza_menezes@softsa.com', 4, 6);
INSERT INTO Funcionario VALUES (10, 'Antônio Caldeira Guerra', '2501124345', '3607262', 'M', 'SE', '13/11/1962', 'Rua Experidião Rosas', '50600750', 'Manaíra', 795, 'antônio_guerra@softsa.com', 33, 4);
INSERT INTO Funcionario VALUES (11, 'Priscila Caldeira Daltro Rodrigues', '61441849025', '5931417', 'F', 'S', '09/04/1970', 'Rua das Aspargatas', '50800970', 'Expedicionários', 493, 'priscila_daltro_rodrigues@softsa.com', 75, 5);
INSERT INTO Funcionario VALUES (12, 'Franscio Medeiros Guedes Caldeira', '53059116563', '7412630', 'M', 'V', '14/05/1974', 'Rua das Plantas', '50300420', 'Bessa', 744, 'franscio_medeiros_guedes_caldeira@softsa.com', 33, NULL);
INSERT INTO Funcionario VALUES (13, 'Giovana Guedes Menezes', '93828765610', '8185848', 'F', 'S', '13/08/1967', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 811, 'giovana_guedes_menezes@softsa.com', 75, 2);
INSERT INTO Funcionario VALUES (14, 'Giovana Medeiros Dutra Lima', '61185437479', '4927157', 'F', 'C', '11/09/1977', 'Avenida Guarabira', '50500640', 'Torre', 517, 'giovana_medeiros_dutra_lima@softsa.com', 2020, 4);
INSERT INTO Funcionario VALUES (15, 'Denis Bezerra Soares Soares', '97729846365', '7946523', 'M', 'C', '23/07/1989', 'Rua das Alcácias', '50400530', 'Expedicionários', 796, 'denis_bezerra_soares@softsa.com', NULL, 10);
INSERT INTO Funcionario VALUES (16, 'Luana Medeiros Medeiros Rodrigues', '93347244206', '8205694', 'F', 'D', '20/12/1983', 'Rua Augusto dos Anjos', '50100200', 'Torre', 233, 'luana_medeiros_medeiros_rodrigues@softsa.com', 2020, 9);
INSERT INTO Funcionario VALUES (17, 'João Silva Silva Lima', '05327144666', '5294126', 'M', 'C', '25/10/1971', 'Rua Augusto dos Anjos', '50100200', 'Torre', 417, 'joão_silva_silva_lima@softsa.com', 82, 8);
INSERT INTO Funcionario VALUES (18, 'Felipe Guedes Souza Onofre', '71966949022', '6419175', 'M', 'C', '08/09/1978', 'Rua das Aspargatas', '50800970', 'Expedicionários', 836, 'felipe_guedes_souza_onofre@softsa.com', 10, 6);
INSERT INTO Funcionario VALUES (19, 'Raíssa Caldeira Caldeira Lima', '80412318377', '9421497', 'F', 'SE', '12/11/1958', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 977, 'raíssa_caldeira_caldeira_lima@softsa.com', 75, 12);
INSERT INTO Funcionario VALUES (20, 'Lucas Silva Rodrigues Rodrigues', '40425622649', '6589565', 'M', 'C', '19/10/1992', 'Rua das Plantas', '50300420', 'Bessa', 768, 'lucas_silva_rodrigues_rodrigues@softsa.com', 33, 8);
INSERT INTO Funcionario VALUES (21, 'Edmilson Guedes Medeiros Lima', '77790230522', '1650495', 'M', 'C', '01/02/1985', 'Rua Rosas Floridas', '50200310', 'Manaíra', 225, 'edmilson_guedes_medeiros_lima@softsa.com', NULL, 13);
INSERT INTO Funcionario VALUES (22, 'Luana Pontes Dutra', '10714542695', '7031584', 'F', 'C', '18/09/1977', 'Rua das Plantas', '50300420', 'Bessa', 681, 'luana_pontes_dutra@softsa.com', 75, NULL);
INSERT INTO Funcionario VALUES (23, 'Rodolfo Guedes Dutra', '25609215960', '2738230', 'M', 'S', '23/05/1990', 'Avenida Guarabira', '50500640', 'Torre', 594, 'rodolfo_guedes_dutra@softsa.com', 101, 10);
INSERT INTO Funcionario VALUES (24, 'Rafaela Bezerra Medeiros Medeiros', '51121399940', '9576541', 'F', 'V', '20/07/1950', 'Rua Augusto dos Anjos', '50100200', 'Torre', 649, 'rafaela_bezerra_medeiros_medeiros@softsa.com', 2020, 3);
INSERT INTO Funcionario VALUES (25, 'Manoel Dutra Soares', '81404412360', '8193634', 'M', 'C', '10/10/1966', 'Rua das Aspargatas', '50800970', 'Expedicionários', 32, 'manoel_dutra_soares@softsa.com', 75, 4);
INSERT INTO Funcionario VALUES (26, 'Petrônio Rodrigues Soares', '52166469221', '7062453', 'M', 'C', '15/12/1996', 'Avenida Ramalho Dantas', '50700860', 'Bessa', 711, 'petrônio_rodrigues_soares@softsa.com', 101, 15);
-- Fim do cadastro de Funcionários


-- Inicio do cadastro de Telefone
INSERT INTO Telefone VALUES (22, '51556402')
INSERT INTO Telefone VALUES (20, '46519809')
INSERT INTO Telefone VALUES (21, '10756965')
INSERT INTO Telefone VALUES (7, '50230307')
INSERT INTO Telefone VALUES (14, '27431282')
INSERT INTO Telefone VALUES (2, '32297365')
INSERT INTO Telefone VALUES (4, '91647962')
INSERT INTO Telefone VALUES (12, '84621564')
INSERT INTO Telefone VALUES (19, '65924345')
INSERT INTO Telefone VALUES (8, '31801195')
INSERT INTO Telefone VALUES (13, '63492855')
INSERT INTO Telefone VALUES (18, '33494106')
INSERT INTO Telefone VALUES (2, '20280580')
INSERT INTO Telefone VALUES (20, '71219658')
INSERT INTO Telefone VALUES (1, '75738199')
INSERT INTO Telefone VALUES (16, '71396317')
INSERT INTO Telefone VALUES (10, '65847980')
INSERT INTO Telefone VALUES (22, '16172765')
INSERT INTO Telefone VALUES (6, '87669799')
INSERT INTO Telefone VALUES (14, '52209005')
INSERT INTO Telefone VALUES (20, '74930547')
INSERT INTO Telefone VALUES (24, '94503260')
INSERT INTO Telefone VALUES (8, '51216559')
INSERT INTO Telefone VALUES (7, '79241644')
INSERT INTO Telefone VALUES (9, '11694245')
INSERT INTO Telefone VALUES (14, '21719162')
INSERT INTO Telefone VALUES (16, '57613839')
INSERT INTO Telefone VALUES (16, '85807966')
INSERT INTO Telefone VALUES (20, '72850253')
INSERT INTO Telefone VALUES (22, '31534226')
INSERT INTO Telefone VALUES (14, '21933433')
INSERT INTO Telefone VALUES (8, '11989184')
INSERT INTO Telefone VALUES (14, '21937083')
INSERT INTO Telefone VALUES (12, '87509694')
INSERT INTO Telefone VALUES (20, '38672770')
INSERT INTO Telefone VALUES (7, '79541635')
INSERT INTO Telefone VALUES (5, '35920673')
INSERT INTO Telefone VALUES (10, '62198168')
INSERT INTO Telefone VALUES (15, '45445591')
INSERT INTO Telefone VALUES (12, '26412104')
INSERT INTO Telefone VALUES (25, '14550971')
INSERT INTO Telefone VALUES (11, '47843519')
INSERT INTO Telefone VALUES (17, '88655219')
INSERT INTO Telefone VALUES (11, '11170747')
INSERT INTO Telefone VALUES (4, '66057831')
INSERT INTO Telefone VALUES (14, '74253218')
INSERT INTO Telefone VALUES (16, '50025234')
INSERT INTO Telefone VALUES (23, '58191897')
INSERT INTO Telefone VALUES (24, '32845380')
INSERT INTO Telefone VALUES (17, '23628840')
INSERT INTO Telefone VALUES (14, '65925746')
INSERT INTO Telefone VALUES (6, '48899294')
INSERT INTO Telefone VALUES (20, '34907271')
INSERT INTO Telefone VALUES (18, '25314906')
INSERT INTO Telefone VALUES (1, '72396397')
INSERT INTO Telefone VALUES (17, '87819300')
INSERT INTO Telefone VALUES (19, '89386017')
INSERT INTO Telefone VALUES (9, '90390741')
INSERT INTO Telefone VALUES (23, '50113006')
INSERT INTO Telefone VALUES (25, '29274324')
INSERT INTO Telefone VALUES (26, '77990941')
INSERT INTO Telefone VALUES (22, '57274217')
INSERT INTO Telefone VALUES (20, '19434373')
INSERT INTO Telefone VALUES (8, '85320211')
INSERT INTO Telefone VALUES (15, '47530258')
INSERT INTO Telefone VALUES (17, '11662708')
INSERT INTO Telefone VALUES (13, '45768310')
INSERT INTO Telefone VALUES (26, '93885568')
INSERT INTO Telefone VALUES (16, '85594670')
INSERT INTO Telefone VALUES (14, '43980467')
INSERT INTO Telefone VALUES (1, '18664943')
INSERT INTO Telefone VALUES (23, '11661120')
INSERT INTO Telefone VALUES (22, '77812102')
INSERT INTO Telefone VALUES (22, '78019107')
INSERT INTO Telefone VALUES (10, '63084161')
-- Fim de cadastro de Telefone


-- Inicio de cadastro de Consultor
INSERT INTO Consultor VALUES (10)
INSERT INTO Consultor VALUES (20)
INSERT INTO Consultor VALUES (21)
INSERT INTO Consultor VALUES (7)
INSERT INTO Consultor VALUES (14)
-- Fim de cadastro de Consultor


-- Início de cadastro de Consultoria
INSERT INTO Consultora VALUES(1, 5254, 10, '10/10/2015');
INSERT INTO Consultora VALUES(2, 484, 20, '20/11/2015');
INSERT INTO Consultora VALUES(3, 3165, 21, '12/08/2014');
INSERT INTO Consultora VALUES(4, 93, 7, '05/06/2016');
INSERT INTO Consultora VALUES(5, 9728, 14, '11/11/2011');
-- Fim de cadastro de Consultoria


-- Início de cadastro de Projeto
INSERT INTO Projeto VALUES(1, 1, 'Desenvolvimento de aplicativo de Calendário', 'CalApp', 2016, 1, 1, 10000.0);
INSERT INTO Projeto VALUES(2, 5, 'Desenvolvimento de aplicativo de gerência de pedidos da empresa do cliente', 'PedApp', 2016, 2, 2, 8000.0);
INSERT INTO Projeto VALUES(3, 3, 'Desenvolvimento de aplicativo de pagamentos', 'PagApp', 2016, 4, 2, 8000.0);
INSERT INTO Projeto VALUES(4, 4, 'Desenvolvimento de aplicativo de agenda', 'AgendApp', 2016, 5, 3, 8000.0);
INSERT INTO Projeto VALUES(5, 2, 'Desenvolvimento de jogo de plataforma', 'GameApp', 2016, 3, 4, 20000.0);
-- Fim de cadastro de Projeto


-- Início de cadastro de Recursos
INSERT INTO Recursos VALUES(1, 1, 2);
INSERT INTO Recursos VALUES(2, 2, 2);
INSERT INTO Recursos VALUES(3, 4, 4);
INSERT INTO Recursos VALUES(4, 3, 2);
INSERT INTO Recursos VALUES(5, 1, 7);
-- Fim de cadastro de Recursos


-- Inicio do cadastro de Alocado
INSERT INTO Alocado VALUES (1, 8, 3, '31/08/2010', NULL)
INSERT INTO Alocado VALUES (1, 8, 2, '01/03/2009', '31/08/2010')
INSERT INTO Alocado VALUES (1, 2, 1, '01/03/2008', '01/03/2009')
INSERT INTO Alocado VALUES (2, 2, 1, '13/08/2012', NULL)
INSERT INTO Alocado VALUES (3, 2, 7, '21/11/2013', NULL)
INSERT INTO Alocado VALUES (4, 4, 6, '11/02/2010', NULL)
INSERT INTO Alocado VALUES (5, 1, 1, '05/05/2014', NULL)
INSERT INTO Alocado VALUES (6, 4, 6, '02/04/2007', NULL)
INSERT INTO Alocado VALUES (7, 6, 10, '19/09/2009', NULL)
INSERT INTO Alocado VALUES (8, 4, 6, '23/07/2010', NULL)
INSERT INTO Alocado VALUES (9, 4, 1, '22/06/2010', NULL)
INSERT INTO Alocado VALUES (10, 6, 10, '13/06/2010', NULL)
INSERT INTO Alocado VALUES (11, 3, 6, '19/01/2010', NULL)
INSERT INTO Alocado VALUES (12, 7, 12, '19/02/2011', NULL)
INSERT INTO Alocado VALUES (13, 1, 7, '19/02/2011', NULL)
INSERT INTO Alocado VALUES (14, 6, 10, '19/02/2011', NULL)
INSERT INTO Alocado VALUES (15, 2, 4, '19/02/2013', NULL)
INSERT INTO Alocado VALUES (16, 7, 9, '12/12/2014', NULL)
INSERT INTO Alocado VALUES (17, 1, 4, '18/10/2009', NULL)
INSERT INTO Alocado VALUES (18, 1, 6, '12/12/2008', NULL)
INSERT INTO Alocado VALUES (19, 4, 6, '12/12/2014', NULL)
INSERT INTO Alocado VALUES (20, 6, 10, '31/08/2012', NULL)
INSERT INTO Alocado VALUES (21, 6, 10, '30/07/2007', NULL)
INSERT INTO Alocado VALUES (22, 5, 1, '29/08/2009', NULL)
INSERT INTO Alocado VALUES (23, 3, 11, '10/06/2016', NULL)
INSERT INTO Alocado VALUES (24, 4, 6, '10/06/2016', NULL)
INSERT INTO Alocado VALUES (25, 5, 12, '17/04/2009', NULL)
INSERT INTO Alocado VALUES (26, 4, 6, '17/04/2009', NULL)
-- Fim do cadastro de Alocado


-- Início do cadastro de Dependente
INSERT INTO Dependente VALUES (1, 15, 'João Pontes Medeiros Guerra', '297593487947', '898091570226', 'M', '01/02/1985');
INSERT INTO Dependente VALUES (2, 15, 'Priscila Medeiros Soares', '812270701200', '597585148205', 'F', '03/04/1991');
INSERT INTO Dependente VALUES (3, 15, 'Felipe Soares Bezerra Pontes', '52272635333', '259105508595', 'M', '28/12/1981');
INSERT INTO Dependente VALUES (1, 1, 'Giovana Daltro Onofre', '893481825574', '77945664759', 'F', '04/04/1990');
INSERT INTO Dependente VALUES (2, 1, 'Priscila Onofre Soares Pontes', '142407846252', '576049508150', 'F', '18/03/1992');
INSERT INTO Dependente VALUES (1, 20, 'Franscio Dutra Bezerra Soares', '491880960617', '734054828123', 'M', '25/03/1995');
INSERT INTO Dependente VALUES (1, 5, 'Camila Daltro Lima', '462467314644', '766683121644', 'F', '12/12/1992');
INSERT INTO Dependente VALUES (2, 5, 'Antônio Daltro Guedes Lima', '994501354361', '449461069647', 'M', '23/10/1984');
INSERT INTO Dependente VALUES (3, 5, 'Paula Rodrigues Guedes Lima', '30658189908', '991090475845', 'F', '30/11/1970');
INSERT INTO Dependente VALUES (4, 5, 'Camila Dutra Medeiros', '873883388543', '16025880384', 'F', '14/07/1960');
INSERT INTO Dependente VALUES (1, 22, 'Giovana Silva Pontes', '212138917085', '586515362212', 'F', '08/09/1993');
INSERT INTO Dependente VALUES (2, 22, 'Priscila Pontes Onofre Caldeira', '768713725742', '938461190211', 'F', '05/06/2005');
INSERT INTO Dependente VALUES (1, 3, 'Louise Guerra Pontes Souza', '866807825257', '217243723012', 'F', '10/10/2010');
INSERT INTO Dependente VALUES (2, 3, 'Paula Caldeira Rodrigues Medeiros', '549305074169', '800034781743', 'F', '20/06/2011');
INSERT INTO Dependente VALUES (1, 10, 'Antônio Bezerra Daltro Silva', '839747382385', '750981237772', 'M', '04/12/2014');
INSERT INTO Dependente VALUES (2, 10, 'Franscio Guedes Rodrigues', '29690739636', '411000319015', 'M', '02/03/2007');
-- Fim de cadastro de Dependente



-- Início do cadastro de Mensagens
INSERT INTO Mensagem VALUES (22, 24, GETDATE(), 'Ola, preciso falar com voces sobre pendencias e modificacoes no projeto xxx');
INSERT INTO Mensagem VALUES (24, 22, GETDATE(), 'Ok, quando podemos conversar?');
INSERT INTO Mensagem VALUES (22, 23, GETDATE(), 'Amanha às 15 hrs!');
INSERT INTO Mensagem VALUES (2, 5, GETDATE(), 'Oi, eu aloquei uma atividade para voce, dá uma visualizada! Obrigado :)');
INSERT INTO Mensagem VALUES (9, 24, GETDATE(), 'Iai, hoje é sexta feira!');
INSERT INTO Mensagem VALUES (9, 24, GETDATE(), 'Barzinho hoje apos o trabalho?');
INSERT INTO Mensagem VALUES (24, 9, GETDATE(), 'Assim que eu terminar o relatorio pro chefe!');
INSERT INTO Mensagem VALUES (24, 9, GETDATE(), 'Simbora!!!');
INSERT INTO Mensagem VALUES (12, 15, GETDATE(), 'Reunião hoje com a equipe Shield com o chefe do Departamento de Projetos às 10 hrs');
INSERT INTO Mensagem VALUES (13, 14, GETDATE(), 'Reunião dos membros da equipe Jedi para definição de atividades dos integrantes para os novos projetos');
INSERT INTO Mensagem VALUES (3, 9, GETDATE(), 'Olá, sou a secretaria de yyyyyy, ele deseja falar com você daqui a 10 min, por favor, venha a sala dele');
-- Fim de cadastro de Mensagens


-- Inicio de cadastro de Desenvolvedor
INSERT INTO Desenvolvedor VALUES (1)
INSERT INTO Desenvolvedor VALUES (19)
INSERT INTO Desenvolvedor VALUES (24)
INSERT INTO Desenvolvedor VALUES (26)
INSERT INTO Desenvolvedor VALUES (8)
INSERT INTO Desenvolvedor VALUES (6)
-- Fim de cadastro de Desenvolvedor


-- Inicio de cadastro de Programa
INSERT INTO Programa VALUES (1, 8);
INSERT INTO Programa VALUES (1, 13);
INSERT INTO Programa VALUES (1, 18);
INSERT INTO Programa VALUES (1, 19);
INSERT INTO Programa VALUES (1, 21);
INSERT INTO Programa VALUES (19, 4);
INSERT INTO Programa VALUES (19, 8);
INSERT INTO Programa VALUES (19, 6);
INSERT INTO Programa VALUES (19, 17);
INSERT INTO Programa VALUES (19, 18);
INSERT INTO Programa VALUES (24, 2);
INSERT INTO Programa VALUES (24, 11);
INSERT INTO Programa VALUES (24, 12);
INSERT INTO Programa VALUES (24, 14);
INSERT INTO Programa VALUES (24, 16);
INSERT INTO Programa VALUES (26, 5);
INSERT INTO Programa VALUES (26, 9);
INSERT INTO Programa VALUES (26, 10);
INSERT INTO Programa VALUES (8, 22);
INSERT INTO Programa VALUES (8, 7);
INSERT INTO Programa VALUES (8, 2);
INSERT INTO Programa VALUES (8, 14);
INSERT INTO Programa VALUES (8, 9);
INSERT INTO Programa VALUES (6, 22);
INSERT INTO Programa VALUES (6, 21);
INSERT INTO Programa VALUES (6, 4);
INSERT INTO Programa VALUES (6, 18);
INSERT INTO Programa VALUES (6, 19);
-- Fim de cadastro de Programa


-- Inicio de cadastro de Atividade
INSERT INTO Atividade VALUES (620, 'Entrega do Projeto wwww', '01/09/2016')
INSERT INTO Atividade VALUES (1269, 'Entrega do Projeto vvvv', '20/12/2016')
INSERT INTO Atividade VALUES (8590, 'Limpeza da sala da direção', '02/09/2016')
INSERT INTO Atividade VALUES (692, 'Consultoria do cliente xxxx', '31/08/2016')
INSERT INTO Atividade VALUES (3074, 'Consultoria do cliente yyyy', '03/09/2016')
INSERT INTO Atividade VALUES (5538, 'Entrega de Relatorio de despesa anual', '15/12/2016')
INSERT INTO Atividade VALUES (4664, 'Planejamento para 2017', '15/12/2016')
INSERT INTO Atividade VALUES (7547, 'Entrega de Metas para 2017', '15/12/2016')
INSERT INTO Atividade VALUES (9786, 'Consultoria do cliente llll', '25/09/2016')
INSERT INTO Atividade VALUES (62, 'Entrega do Projeto de Banco de Dados' ,'31/08/2016')
-- Fim de cadastro de Atividade


-- Inicio de cadastro de Trabalho
INSERT INTO Trabalho VALUES (620, 4)
INSERT INTO Trabalho VALUES (620, 19)
INSERT INTO Trabalho VALUES (1269, 8)
INSERT INTO Trabalho VALUES (1269, 6)
INSERT INTO Trabalho VALUES (62, 8)
INSERT INTO Trabalho VALUES (62, 26)
INSERT INTO Trabalho VALUES (62, 24)
INSERT INTO Trabalho VALUES (8590, 17)
INSERT INTO Trabalho VALUES (692, 10)
INSERT INTO Trabalho VALUES (3074, 21)
INSERT INTO Trabalho VALUES (9786, 20)
INSERT INTO Trabalho VALUES (5538, 3)
INSERT INTO Trabalho VALUES (5538, 13)
INSERT INTO Trabalho VALUES (4664, 1)
INSERT INTO Trabalho VALUES (7547, 2)
-- Fim de cadastro de Trabalho