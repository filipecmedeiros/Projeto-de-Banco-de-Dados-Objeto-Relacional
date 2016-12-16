-- Inserindo Países

INSERT INTO tb_pais values(tp_pais(291, 'Brasil', 'BRA', (SELECT REF(P) FROM tb_pais P WHERE id = 291))); 
INSERT INTO tb_pais values(tp_pais(729, 'Gra Bretanha', 'GBR', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(311, 'Estados Unidos', 'USA', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(315, 'Canada', 'CAN', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(385, 'Rep. Tcheca', 'CZE', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(455, 'Dinamarca', 'DEN', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(691, 'Franca', 'FRA', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(759, 'Alemanha', 'GER', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(893, 'Irlanda', 'IRL', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(823, 'Islandia', 'ISL', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(336, 'Luxemburgo', 'LUX', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(554, 'Holanda', 'NED', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(583, 'Nova Zelandia', 'NZL', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));
INSERT INTO tb_pais values(tp_pais(159, 'Suica', 'SWI', (SELECT REF(P) FROM tb_pais P WHERE id = 291)));

-- Inserindo Atletas

INSERT INTO tb_atleta values(tp_atleta(09660138405, 'James Smith', tp_endereco('St John Street', 'Clerkenwell', 52061470), tp_nt_fones('7291664905'), (SELECT REF(P) FROM tb_pais P WHERE id = 729), 001));
INSERT INTO tb_atleta values(tp_atleta(84312893207, 'Simon Cowell', tp_endereco('Cannon Street', 'London Buses', 91234672), tp_nt_fones('9269834149'), (SELECT REF(P) FROM tb_pais P WHERE id = 729), 002));
INSERT INTO tb_atleta values(tp_atleta(68312802346, 'Alex Lange', tp_endereco('Queen Victoria', 'Central London', 23509812), tp_nt_fones('8664524695'), (SELECT REF(P) FROM tb_pais P WHERE id = 729), 003));
INSERT INTO tb_atleta values(tp_atleta(98313302340, 'Rogerio da Silva', tp_endereco('Av. Eng. Domingos Ferreira', 'Boa Viagem', 51111021), tp_nt_fones('6895963454'), (SELECT REF(P) FROM tb_pais P WHERE id = 291), 004));
INSERT INTO tb_atleta values(tp_atleta(19313302390, 'Joana Bezerra', tp_endereco('Av. Bernardo Vieira de Melo', 'Piedade', 54410010), tp_nt_fones('9667761177'), (SELECT REF(P) FROM tb_pais P WHERE id = 291), 005));
INSERT INTO tb_atleta values(tp_atleta(09328948979, 'Yuri Coutinho', tp_endereco('Rua Silvino Lopes', 'Casa Forte', 52061490), tp_nt_fones('7363008625'), (SELECT REF(P) FROM tb_pais P WHERE id = 291), 006));
INSERT INTO tb_atleta values(tp_atleta(52215902331, 'Hughes Smith', tp_endereco('St Wake Forest', 'Brooklyn', 27587), tp_nt_fones('4051015689'), (SELECT REF(P) FROM tb_pais P WHERE id = 311), 007));
INSERT INTO tb_atleta values(tp_atleta(22315902339, 'John Cena', tp_endereco('Hillside Drive', 'Queens', 10002), tp_nt_fones('5675336423'), (SELECT REF(P) FROM tb_pais P WHERE id = 311), 008));
INSERT INTO tb_atleta values(tp_atleta(29314902338, 'Hilary Trump', tp_endereco('Bank Street', 'The Bronx', 11369), tp_nt_fones('6984314376'), (SELECT REF(P) FROM tb_pais P WHERE id = 311), 009));
INSERT INTO tb_atleta values(tp_atleta(32314912332, 'Jaiden Van', tp_endereco('3586 MacLaren Street', 'Carlingwood', 690834), tp_nt_fones('8493596274'), (SELECT REF(P) FROM tb_pais P WHERE id = 315), 010));
INSERT INTO tb_atleta values(tp_atleta(62315902363, 'Joshua Aguilar', tp_endereco('4356 Carling Avenue', 'Downtown', 549823), tp_nt_fones('1228953517'), (SELECT REF(P) FROM tb_pais P WHERE id = 315), 011));
INSERT INTO tb_atleta values(tp_atleta(43298109843, 'Shannon Demko', tp_endereco('114 Cordova Street', 'Manor Park', 259840), tp_nt_fones('9913420918'), (SELECT REF(P) FROM tb_pais P WHERE id = 315), 012));
INSERT INTO tb_atleta values(tp_atleta(49328573009, 'Hana Jaskova', tp_endereco('Trebcinska 469', 'Moravskoslezsky kraj', 77900), tp_nt_fones('7573369536'), (SELECT REF(P) FROM tb_pais P WHERE id = 385), 013));
INSERT INTO tb_atleta values(tp_atleta(12370034980, 'Robert Doubek', tp_endereco('Masarykova 284', 'Olomoucky kraj', 78901), tp_nt_fones('9889965572'), (SELECT REF(P) FROM tb_pais P WHERE id = 385), 014));
INSERT INTO tb_atleta values(tp_atleta(90239209323, 'Ondrej Ryha', tp_endereco('Třebčínská 1910', 'Moravskoslezsky kraj', 78301), tp_nt_fones('7738292284'), (SELECT REF(P) FROM tb_pais P WHERE id = 385), 015));
INSERT INTO tb_atleta values(tp_atleta(59872013755, 'Natasja Bak', tp_endereco('Stationsvej 86', 'Region Midtjylland', 8350), tp_nt_fones('1610949024'), (SELECT REF(P) FROM tb_pais P WHERE id = 455), 016));
INSERT INTO tb_atleta values(tp_atleta(98473987184, 'Michael Toft', tp_endereco('Stationsvej 57', 'Hovedstaden', 8323), tp_nt_fones('6347243792'), (SELECT REF(P) FROM tb_pais P WHERE id = 455), 017));
INSERT INTO tb_atleta values(tp_atleta(95637807278, 'Mathias Pedersen', tp_endereco('Stationsvej 2', 'Syddanmark', 9546), tp_nt_fones('2817947185'), (SELECT REF(P) FROM tb_pais P WHERE id = 455), 018));
INSERT INTO tb_atleta values(tp_atleta(14498209889, 'Sébastien Pouchard', tp_endereco('40 rue Victor Hugo', 'Île-de-France', 78700), tp_nt_fones('5137243157'), (SELECT REF(P) FROM tb_pais P WHERE id = 691), 019));
INSERT INTO tb_atleta values(tp_atleta(09839078286, 'Ganelon Batard', tp_endereco('39 rue La Boétie', 'Île-de-France', 75013), tp_nt_fones('5300054525'), (SELECT REF(P) FROM tb_pais P WHERE id = 691), 020));
INSERT INTO tb_atleta values(tp_atleta(90843092829, 'Amitee Frappier', tp_endereco('27 rue Banaudon', 'Rhône-Alpes', 69008), tp_nt_fones('8631445366'), (SELECT REF(P) FROM tb_pais P WHERE id = 691), 021));
INSERT INTO tb_atleta values(tp_atleta(09830972757, 'Luca Ostermann', tp_endereco('Reeperbahn 13', 'Mecklenburg-Vorpommern', 18230), tp_nt_fones('3760906275'), (SELECT REF(P) FROM tb_pais P WHERE id = 759), 022));
INSERT INTO tb_atleta values(tp_atleta(95893820965, 'Patrick Propst', tp_endereco('Genslerstrabe 84', 'Berlin', 13359), tp_nt_fones('8360514151'), (SELECT REF(P) FROM tb_pais P WHERE id = 759), 023));
INSERT INTO tb_atleta values(tp_atleta(43908643798, 'Vanessa Nacht', tp_endereco('Bayreuther Strasse 99', 'Brandenburg', 15204), tp_nt_fones('1442010376'), (SELECT REF(P) FROM tb_pais P WHERE id = 759), 024));
INSERT INTO tb_atleta values(tp_atleta(48943987924, 'Kayleigh Marsden', tp_endereco('57 Cefn Road', 'FARMCOTE', 2509822), tp_nt_fones('5051374193'), (SELECT REF(P) FROM tb_pais P WHERE id = 893), 025));
INSERT INTO tb_atleta values(tp_atleta(65092309355, 'Joel Harper', tp_endereco('22 Thompsons Lane', 'MELTON MOWBRAY', 2546255), tp_nt_fones('6764745353'), (SELECT REF(P) FROM tb_pais P WHERE id = 893), 026));
INSERT INTO tb_atleta values(tp_atleta(43645242767, 'Corey Fraser', tp_endereco('4 St Dunstans Street', 'WATERFORD', 26542625), tp_nt_fones('4871292249'), (SELECT REF(P) FROM tb_pais P WHERE id = 893), 027));
INSERT INTO tb_atleta values(tp_atleta(23508654223, 'Hreiðar Birgisson', tp_endereco('Akurbraut 16', 'Akranes', 301), tp_nt_fones('9163437542'), (SELECT REF(P) FROM tb_pais P WHERE id = 823), 028));
INSERT INTO tb_atleta values(tp_atleta(89654635432, 'Steinunn Guðsteinsdóttir', tp_endereco('Túnbraut 52', 'Reykjavík', 123), tp_nt_fones('2296134509'), (SELECT REF(P) FROM tb_pais P WHERE id = 823), 029));
INSERT INTO tb_atleta values(tp_atleta(64243269422, 'Héðinn Guðbrandsson', tp_endereco('Borgarholtsbraut 22', 'Kópavogur', 200), tp_nt_fones('1082276515'), (SELECT REF(P) FROM tb_pais P WHERE id = 823), 030));
INSERT INTO tb_atleta values(tp_atleta(09654354653, 'Mathias Simons', tp_endereco('Voies des Fers 312', 'Grevenmacher', 9571), tp_nt_fones('7295538293'), (SELECT REF(P) FROM tb_pais P WHERE id = 336), 031));
INSERT INTO tb_atleta values(tp_atleta(87234654434, 'Emmanuel Servais', tp_endereco('Route de Motechet 222', 'Diekirch', 7788), tp_nt_fones('7376101773'), (SELECT REF(P) FROM tb_pais P WHERE id = 336), 032));
INSERT INTO tb_atleta values(tp_atleta(12221658658, 'Édouard Thilges', tp_endereco('Rue Champs-Claire 157', 'Luxembourg', 6860), tp_nt_fones('8936355028'), (SELECT REF(P) FROM tb_pais P WHERE id = 336), 033));
INSERT INTO tb_atleta values(tp_atleta(65643244377, 'Cyrina Göbbels', tp_endereco('Jacob Canisstraat 188', 'Gelderland', 6521), tp_nt_fones('7216782833'), (SELECT REF(P) FROM tb_pais P WHERE id = 554), 034));
INSERT INTO tb_atleta values(tp_atleta(80976754622, 'Sieb Verboven', tp_endereco('Larserdreef 65', 'Flevoland', 8233), tp_nt_fones('3060892990'), (SELECT REF(P) FROM tb_pais P WHERE id = 554), 035));
INSERT INTO tb_atleta values(tp_atleta(56764375543, 'Grietje Lancee', tp_endereco('De Zaan 29', 'Utrecht', 3448), tp_nt_fones('4797644349'), (SELECT REF(P) FROM tb_pais P WHERE id = 554), 036));
INSERT INTO tb_atleta values(tp_atleta(68754658578, 'Mattie Whitaker', tp_endereco('52 Eriksen Road', 'Napier', 4110), tp_nt_fones('4415085268'), (SELECT REF(P) FROM tb_pais P WHERE id = 583), 037));
INSERT INTO tb_atleta values(tp_atleta(37566584867, 'Samuel Jefferson', tp_endereco('89 Gambia Place', 'Auckland', 1061), tp_nt_fones('7983165476'), (SELECT REF(P) FROM tb_pais P WHERE id = 583), 038));
INSERT INTO tb_atleta values(tp_atleta(89677564352, 'Joann Penrod', tp_endereco('111 Tupelo Street', 'Hamilton', 3200), tp_nt_fones('4135019574'), (SELECT REF(P) FROM tb_pais P WHERE id = 583), 039));
INSERT INTO tb_atleta values(tp_atleta(25768678653, 'Mathias Dreher', tp_endereco('Via Muraccio 145', 'Sulzerberg', 5085), tp_nt_fones('4185805352'), (SELECT REF(P) FROM tb_pais P WHERE id = 159), 040));
INSERT INTO tb_atleta values(tp_atleta(45867485644, 'Johanna Gottschalk', tp_endereco('Kappelergasse 133', 'Aarau', 5000), tp_nt_fones('2210839596'), (SELECT REF(P) FROM tb_pais P WHERE id = 159), 041));
INSERT INTO tb_atleta values(tp_atleta(54679854742, 'Brice Bondy', tp_endereco('Avenue d', 'Port-Valais', 1897), tp_nt_fones('1384808755'), (SELECT REF(P) FROM tb_pais P WHERE id = 159), 042));

-- Inserindo Tecnicos

INSERT INTO tb_tecnico values(tp_tecnico(05413063289, 'Tec 1', tp_endereco('Rua 1', 'Bairro 1', 000001), tp_nt_fones('3183864491'), (SELECT REF(P) FROM tb_pais P WHERE id = 729), 001));
INSERT INTO tb_tecnico values(tp_tecnico(28375292358, 'Tec 2', tp_endereco('Rua 2', 'Bairro 2', 000002), tp_nt_fones('6359634583'), (SELECT REF(P) FROM tb_pais P WHERE id = 291), 002));
INSERT INTO tb_tecnico values(tp_tecnico(02539858932, 'Tec 3', tp_endereco('Rua 3', 'Bairro 3', 000003), tp_nt_fones('3963664649'), (SELECT REF(P) FROM tb_pais P WHERE id = 311), 003));
INSERT INTO tb_tecnico values(tp_tecnico(59024370923, 'Tec 4', tp_endereco('Rua 4', 'Bairro 4', 000004), tp_nt_fones('3731117758'), (SELECT REF(P) FROM tb_pais P WHERE id = 315), 004));
INSERT INTO tb_tecnico values(tp_tecnico(43492586972, 'Tec 5', tp_endereco('Rua 5', 'Bairro 5', 000005), tp_nt_fones('3253099593'), (SELECT REF(P) FROM tb_pais P WHERE id = 385), 005));
INSERT INTO tb_tecnico values(tp_tecnico(90572164238, 'Tec 6', tp_endereco('Rua 6', 'Bairro 6', 000006), tp_nt_fones('8114988547'), (SELECT REF(P) FROM tb_pais P WHERE id = 455), 006));
INSERT INTO tb_tecnico values(tp_tecnico(43896712845, 'Tec 7', tp_endereco('Rua 7', 'Bairro 7', 000007), tp_nt_fones('8101440398'), (SELECT REF(P) FROM tb_pais P WHERE id = 691), 007));
INSERT INTO tb_tecnico values(tp_tecnico(13583294834, 'Tec 8', tp_endereco('Rua 8', 'Bairro 8', 000008), tp_nt_fones('3329820799'), (SELECT REF(P) FROM tb_pais P WHERE id = 759), 008));
INSERT INTO tb_tecnico values(tp_tecnico(63658324968, 'Tec 9', tp_endereco('Rua 9', 'Bairro 9', 000009), tp_nt_fones('2004494268'), (SELECT REF(P) FROM tb_pais P WHERE id = 893), 009));
INSERT INTO tb_tecnico values(tp_tecnico(47849243225, 'Tec 10', tp_endereco('Rua 10', 'Bairro 10', 0000010), tp_nt_fones('1614788719'), (SELECT REF(P) FROM tb_pais P WHERE id = 823), 0010));
INSERT INTO tb_tecnico values(tp_tecnico(56738592489, 'Tec 11', tp_endereco('Rua 11', 'Bairro 11', 0000011), tp_nt_fones('8540645626'), (SELECT REF(P) FROM tb_pais P WHERE id = 336), 0011));
INSERT INTO tb_tecnico values(tp_tecnico(47832598265, 'Tec 12', tp_endereco('Rua 12', 'Bairro 12', 0000012), tp_nt_fones('7660221668'), (SELECT REF(P) FROM tb_pais P WHERE id = 554), 0012));
INSERT INTO tb_tecnico values(tp_tecnico(57537435761, 'Tec 13', tp_endereco('Rua 13', 'Bairro 13', 0000013), tp_nt_fones('6048448419'), (SELECT REF(P) FROM tb_pais P WHERE id = 583), 0013));
INSERT INTO tb_tecnico values(tp_tecnico(69843769528, 'Tec 14', tp_endereco('Rua 14', 'Bairro 14', 0000014), tp_nt_fones('5160224908'), (SELECT REF(P) FROM tb_pais P WHERE id = 159), 0014));

--Inserindo equipes

INSERT INTO tb_equipe VALUES (tp_equipe(05413063289, 'Equipe GBR', 09660138405, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '05413063289'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '09660138405')));
INSERT INTO tb_equipe VALUES (tp_equipe(05413063289, 'Equipe GBR', 84312893207, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '05413063289'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '84312893207')));
INSERT INTO tb_equipe VALUES (tp_equipe(05413063289, 'Equipe GBR', 68312802346, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '05413063289'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '68312802346')));
INSERT INTO tb_equipe VALUES (tp_equipe(28375292358, 'Equipe BRA', 98313302340, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '28375292358'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '98313302340')));
INSERT INTO tb_equipe VALUES (tp_equipe(28375292358, 'Equipe BRA', 19313302390, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '28375292358'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '19313302390')));
INSERT INTO tb_equipe VALUES (tp_equipe(28375292358, 'Equipe BRA', 09328948979, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '28375292358'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '09328948979')));
INSERT INTO tb_equipe VALUES (tp_equipe(02539858932, 'Equipe USA', 52215902331, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '02539858932'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '52215902331')));
INSERT INTO tb_equipe VALUES (tp_equipe(02539858932, 'Equipe USA', 22315902339, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '02539858932'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '22315902339')));
INSERT INTO tb_equipe VALUES (tp_equipe(02539858932, 'Equipe USA', 29314902338, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '02539858932'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '29314902338')));
INSERT INTO tb_equipe VALUES (tp_equipe(59024370923, 'Equipe CAN', 32314912332, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '59024370923'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '32314912332')));
INSERT INTO tb_equipe VALUES (tp_equipe(59024370923, 'Equipe CAN', 62315902363, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '59024370923'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '62315902363')));
INSERT INTO tb_equipe VALUES (tp_equipe(59024370923, 'Equipe CAN', 43298109843, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '59024370923'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '43298109843')));
INSERT INTO tb_equipe VALUES (tp_equipe(43492586972, 'Equipe FRA', 14498209889, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '43492586972'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '14498209889')));
INSERT INTO tb_equipe VALUES (tp_equipe(43492586972, 'Equipe FRA', 09839078286, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '43492586972'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '09839078286')));
INSERT INTO tb_equipe VALUES (tp_equipe(43492586972, 'Equipe FRA', 90843092829, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '43492586972'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '90843092829')));
INSERT INTO tb_equipe VALUES (tp_equipe(90572164238, 'Equipe GER', 09830972757, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '90572164238'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '09830972757')));
INSERT INTO tb_equipe VALUES (tp_equipe(90572164238, 'Equipe GER', 95893820965, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '90572164238'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '95893820965')));
INSERT INTO tb_equipe VALUES (tp_equipe(90572164238, 'Equipe GER', 43908643798, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '90572164238'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '43908643798')));
INSERT INTO tb_equipe VALUES (tp_equipe(63658324968, 'Equipe IRL', 48943987924, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '63658324968'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '48943987924')));
INSERT INTO tb_equipe VALUES (tp_equipe(63658324968, 'Equipe IRL', 65092309355, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '63658324968'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '65092309355')));
INSERT INTO tb_equipe VALUES (tp_equipe(63658324968, 'Equipe IRL', 43645242767, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '63658324968'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '43645242767')));
INSERT INTO tb_equipe VALUES (tp_equipe(47849243225, 'Equipe ISL', 23508654223, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '47849243225'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '23508654223')));
INSERT INTO tb_equipe VALUES (tp_equipe(47849243225, 'Equipe ISL', 89654635432, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '47849243225'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '89654635432')));
INSERT INTO tb_equipe VALUES (tp_equipe(47849243225, 'Equipe ISL', 64243269422, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '47849243225'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '64243269422')));
INSERT INTO tb_equipe VALUES (tp_equipe(56738592489, 'Equipe LUX', 09654354653, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '56738592489'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '09654354653')));
INSERT INTO tb_equipe VALUES (tp_equipe(56738592489, 'Equipe LUX', 87234654434, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '56738592489'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '87234654434')));
INSERT INTO tb_equipe VALUES (tp_equipe(56738592489, 'Equipe LUX', 12221658658, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '56738592489'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '12221658658')));
INSERT INTO tb_equipe VALUES (tp_equipe(47832598265, 'Equipe NED', 65643244377, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '47832598265'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '65643244377')));
INSERT INTO tb_equipe VALUES (tp_equipe(47832598265, 'Equipe NED', 80976754622, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '47832598265'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '80976754622')));
INSERT INTO tb_equipe VALUES (tp_equipe(47832598265, 'Equipe NED', 56764375543, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '47832598265'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '56764375543')));
INSERT INTO tb_equipe VALUES (tp_equipe(57537435761, 'Equipe NZL', 68754658578, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '57537435761'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '68754658578')));
INSERT INTO tb_equipe VALUES (tp_equipe(57537435761, 'Equipe NZL', 37566584867, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '57537435761'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '37566584867')));
INSERT INTO tb_equipe VALUES (tp_equipe(57537435761, 'Equipe NZL', 89677564352, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '57537435761'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '89677564352')));
INSERT INTO tb_equipe VALUES (tp_equipe(69843769528, 'Equipe SWI', 25768678653, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '69843769528'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '25768678653')));
INSERT INTO tb_equipe VALUES (tp_equipe(69843769528, 'Equipe SWI', 45867485644, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '69843769528'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '45867485644')));
INSERT INTO tb_equipe VALUES (tp_equipe(69843769528, 'Equipe SWI', 54679854742, (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '69843769528'), (SELECT REF(t) FROM tb_atleta t WHERE cpf = '54679854742')));

-- Inserindo equipamentos

INSERT INTO tb_equipamento VALUES(tp_equipamento(0101, 'Argolas', 'Desc', 43645242767, (SELECT REF(A) FROM tb_atleta A WHERE cpf = '43645242767')));
INSERT INTO tb_equipamento VALUES(tp_equipamento(0202, 'Fita', 'Desc', 65643244377, (SELECT REF(A) FROM tb_atleta A WHERE cpf = '65643244377')));
INSERT INTO tb_equipamento VALUES(tp_equipamento(0303, 'Bastao', 'Desc', 98473987184, (SELECT REF(A) FROM tb_atleta A WHERE cpf = '98473987184')));

-- Inserindo locais

INSERT INTO tb_local VALUES(tp_local(01, 'Maracana', 700000));
INSERT INTO tb_local VALUES(tp_local(02, 'Estadio Olimpico', 400000));
INSERT INTO tb_local VALUES(tp_local(03, 'Pontal', 250000));
INSERT INTO tb_local VALUES(tp_local(04, 'Riocentro', 300000));
INSERT INTO tb_local VALUES(tp_local(05, 'Forte de Copacabana', 420000));
INSERT INTO tb_local VALUES(tp_local(06, 'Arena Carioca', 150000));
INSERT INTO tb_local VALUES(tp_local(07, 'Mineirao', 550000));
INSERT INTO tb_local VALUES(tp_local(08, 'Arena do Futuro', 120000));
INSERT INTO tb_local VALUES(tp_local(09, 'Estadio Aquatico Olimpico', 230000));
INSERT INTO tb_local VALUES(tp_local(10, 'Maracanazinho', 400000));
INSERT INTO tb_local VALUES(tp_local(11, 'Arena de Volei de Praia', 115000));
INSERT INTO tb_local VALUES(tp_local(12, 'Velodromo', 103000));
INSERT INTO tb_local VALUES(tp_local(13, 'Estadio da Lagoa', 220000));
INSERT INTO tb_local VALUES(tp_local(14, 'Arena Olimpica do Rio', 260000));

-- Inserindo competições

INSERT INTO tb_competicao VALUES(tp_competicao(100, 'Atletismo', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(200, 'Ciclismo', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(300, 'Futebol', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(400, 'Ginastica', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(500, 'Natacao', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(600, 'Pentlato', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(700, 'Volei', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(800, 'Basquete', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(900, 'Esgrima', 'Desc'));
INSERT INTO tb_competicao VALUES(tp_competicao(110, 'Tiro', 'Desc'));

-- Inserindo modalidades

INSERT INTO tb_modalidade VALUES(tp_modalidade(200, 'Volei de Praia', 'Desc'));
INSERT INTO tb_modalidade VALUES(tp_modalidade(201, 'Tiro com Arco', 'Desc'));
INSERT INTO tb_modalidade VALUES(tp_modalidade(202, 'Tiro Esportivo', 'Desc'));
INSERT INTO tb_modalidade VALUES(tp_modalidade(203, 'Ginastica Artistica', 'Desc'));
INSERT INTO tb_modalidade VALUES(tp_modalidade(204, 'Ginastica Ritmica', 'Desc'));
INSERT INTO tb_modalidade VALUES(tp_modalidade(205, 'Ciclismo de Pista', 'Desc'));
INSERT INTO tb_modalidade VALUES(tp_modalidade(206, 'Ciclismo Mountain Bike', 'Desc'));

-- Inserindo competicao-modalidade

INSERT INTO tb_competicao_modalidade VALUES(tp_competicao_modalidade(700, 200, (SELECT REF(C) FROM tb_competicao C WHERE id = '700'), (SELECT REF(M) FROM tb_modalidade M WHERE id = '200')));
INSERT INTO tb_competicao_modalidade VALUES(tp_competicao_modalidade(110, 201, (SELECT REF(C) FROM tb_competicao C WHERE id = '110'), (SELECT REF(M) FROM tb_modalidade M WHERE id = '201')));
INSERT INTO tb_competicao_modalidade VALUES(tp_competicao_modalidade(110, 202, (SELECT REF(C) FROM tb_competicao C WHERE id = '110'), (SELECT REF(M) FROM tb_modalidade M WHERE id = '202')));
INSERT INTO tb_competicao_modalidade VALUES(tp_competicao_modalidade(400, 203, (SELECT REF(C) FROM tb_competicao C WHERE id = '400'), (SELECT REF(M) FROM tb_modalidade M WHERE id = '203')));
INSERT INTO tb_competicao_modalidade VALUES(tp_competicao_modalidade(400, 204, (SELECT REF(C) FROM tb_competicao C WHERE id = '400'), (SELECT REF(M) FROM tb_modalidade M WHERE id = '204')));
INSERT INTO tb_competicao_modalidade VALUES(tp_competicao_modalidade(200, 205, (SELECT REF(C) FROM tb_competicao C WHERE id = '200'), (SELECT REF(M) FROM tb_modalidade M WHERE id = '205')));
INSERT INTO tb_competicao_modalidade VALUES(tp_competicao_modalidade(200, 206, (SELECT REF(C) FROM tb_competicao C WHERE id = '200'), (SELECT REF(M) FROM tb_modalidade M WHERE id = '206')));

-- Inserindo evento 

INSERT INTO tb_evento VALUES(tp_evento(05413063289, 03, 200, '13-07-2016', (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '05413063289'), (SELECT REF(L) FROM tb_local L WHERE id = '03'), (SELECT REF(C) FROM tb_competicao C WHERE id = '200')));
INSERT INTO tb_evento VALUES(tp_evento(28375292358, 07, 400, '14-07-2016', (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '28375292358'), (SELECT REF(L) FROM tb_local L WHERE id = '07'), (SELECT REF(C) FROM tb_competicao C WHERE id = '400'))); 
INSERT INTO tb_evento VALUES(tp_evento(43492586972, 01, 300, '15-07-2016', (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '43492586972'), (SELECT REF(L) FROM tb_local L WHERE id = '01'), (SELECT REF(C) FROM tb_competicao C WHERE id = '300')));
INSERT INTO tb_evento VALUES(tp_evento(59024370923, 02, 500, '16-07-2016', (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '59024370923'), (SELECT REF(L) FROM tb_local L WHERE id = '02'), (SELECT REF(C) FROM tb_competicao C WHERE id = '500')));
INSERT INTO tb_evento VALUES(tp_evento(13583294834, 10, 700, '17-07-2016', (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '13583294834'), (SELECT REF(L) FROM tb_local L WHERE id = '10'), (SELECT REF(C) FROM tb_competicao C WHERE id = '700')));
INSERT INTO tb_evento VALUES(tp_evento(90572164238, 14, 100, '18-07-2016', (SELECT REF(t) FROM tb_tecnico t WHERE cpf = '90572164238'), (SELECT REF(L) FROM tb_local L WHERE id = '14'), (SELECT REF(C) FROM tb_competicao C WHERE id = '100')));

-- Inserindo medalhas

INSERT INTO tb_medalha VALUES(tp_medalha(111, 'O', 100000.00, (SELECT REF(E) FROM tb_evento E WHERE pessoa_cpf = '05413063289')));
INSERT INTO tb_medalha VALUES(tp_medalha(222, 'P', 50000.00, (SELECT REF(E) FROM tb_evento E WHERE pessoa_cpf = '43492586972')));
INSERT INTO tb_medalha VALUES(tp_medalha(333, 'B', 25000.00, (SELECT REF(E) FROM tb_evento E WHERE pessoa_cpf = '13583294834')));
