INSERT INTO public.setors (id, ativo, nome, telefone, created_at, updated_at) VALUES 
(1, true, 'GABINETE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(2, true, 'AJ', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(3, true, 'ATP', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(4, true, 'COAPRH', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(5, true, 'COMPS', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(6, true, 'CORE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(7, true, 'COFIN', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(8, true, 'FEE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(9, true, 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(10, true, 'SEL', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(11, true, '1° DIREC', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(12, true, 'DRAE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(13, true, 'AUDITORIO', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(14, true, 'PROTOCOLO GERAL', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00');

ALTER SEQUENCE public.id_seq_setores RESTART WITH 15;

INSERT INTO public.subsetors (id, ativo, nome, nomesetor, telefone, created_at, updated_at) VALUES
(1, true, 'CERIMONIAL', 'GABINETE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(2, true, 'UES', 'GABINETE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(3, true, 'CPS', 'GABINETE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(4, true, 'UCI/SEEC', 'GABINETE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(5, true, 'UNDIME', 'GABINETE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(6, true, 'GABINETE', 'GABINETE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(7, true, 'AJ', 'AJ', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(8, true, 'ATP', 'ATP', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(9, true, 'QUALIDADE DE VIDA', 'COAPRH', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(10, true, 'ARQUIVO', 'COAPRH', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(11, true, 'COAPRH', 'COAPRH', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(12, true, 'SCMCE', 'COMPS', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(13, true, 'TRANSPORTE', 'COMPS', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(14, true, 'GPD', 'COMPS', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(15, true, 'CPL', 'COMPS', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(16, true, 'CEL/CPP', 'COMPS', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(17, true, 'COMPS', 'COMPS', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(18, true, 'CPATE', 'CORE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(19, true, 'CORE', 'CORE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(20, true, 'COFIN', 'COFIN', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(21, true, 'UCI/FEE', 'FEE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(22, true, 'FEE', 'FEE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(23, true, 'NECAD', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(24, true, 'NEEPDH', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(25, true, 'NULLB', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(26, true, 'SOINSPE', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(27, true, 'ARQUIVO/SOINSPE', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(28, true, 'SUASE', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(29, true, 'SUEF', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(30, true, 'SUEJA', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(31, true, 'SUEM', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(32, true, 'SUEP', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(33, true, 'SUESP', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(34, true, 'LABCRIE', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(35, true, 'NEADTEC', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(36, true, 'CODESE', 'CODESE', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(37, true, 'SEL', 'SEL', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(38, true, 'DRAE', '1° DIREC', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(39, true, 'PROTOCOLO', 'PROTOCOLO GERAL', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(40, true, 'AUDITORIO', 'AUDITORIO', 32323232, '2020-01-01 00:00:00', '2020-01-01 00:00:00');

ALTER SEQUENCE public.id_seq_subsetores RESTART WITH 41;

INSERT INTO public.users (id, ativo, nome, email, cpf, password_hash, telefone, setor_origem, subsetor_origem, created_at, updated_at) VALUES
(2, true, 'LAERTE', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(3, true, 'DEYVES OLIVEIRA', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(4, true, 'HELDER', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(5, true, 'LEONARDO CAVALCANTI', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(6, true, 'FRANCISCO VICENTE', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(7, true, 'MARCELO MELO', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(8, true, 'AXL FONSSECA', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(9, true, 'LUCAS CHIANCA', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(10, true, 'MATEUS FELIPE', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(11, true, 'MAXIMILIANO LEITE', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(12, true, 'VICTOR', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(13, true, 'GUILHERME CAMARA', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(14, true, 'GUILHERME LIRA', 'exeple@GPD.com', '000.000.000-00', '$2a$10$', '3232-3232', 'Nome Setor', 'Nome Subsetor', '2020-01-01 00:00:00', '2020-01-01 00:00:00');

ALTER SEQUENCE public.id_seq_users RESTART WITH 15;

INSERT INTO public.controles (id, setor, subsetor, ilha, baia, cputombo, cpunumeroserie, monitor1tombo, monitor1numeroserie, monitor2tombo, monitor2numeroserie, impressora, observacao, created_at, updated_at) VALUES
(1, 'COMPS', 'SCMCE', '01', '01', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(2, 'COMPS', 'SCMCE', '02', '01', 'A-15/22414', '0', 'A-12-1463', 'ETLPL0W001107004664304', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(3, 'COMPS', 'SCMCE', '02', '02', 'A-15/22413', '0', 'A-15/22360', 'COQ1CIA000668', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(4, 'COMPS', 'SCMCE', '03', '01', 'SCMCE-022', '0', 'A-12-1470', 'ETLPL0W0011070009C4304', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(5, 'COMPS', 'SCMCE', '03', '02', '108', 'PE0867PK', '108', 'VA649670', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(6, 'COMPS', 'SCMCE', '03', '03', '094', 'PE08Q5BE', '094', 'SVA362073', 'A-15/22372', 'COQ1CIA000683', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(7, 'COMPS', 'SCMCE', '03', '04', 'A-15/22417', '0', '0', 'PE22HQAQ602086P', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(8, 'COMPS', 'SCMCE', '03', '05', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(9, 'COMPS', 'SCMCE', '03', '06', 'A-15/22419', '0', '0', '151002494', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(10, 'COMPS', 'SCMCE', '03', '07', '112', 'PE082319', '112', 'VA701686', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(11, 'COMPS', 'SCMCE', '03', '08', 'A-15/22415', '0', '0', '151002514', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(12, 'COMPS', 'SCMCE', '04', '01', 'A-04/1877', '0', '0', '151002045', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(13, 'COMPS', 'SCMCE', '04', '02', 'A-01/52792', '0', 'A-15/22363', 'COQ23IA001219', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(14, 'COMPS', 'SCMCE', '04', '03', 'A-01/52793', '0', 'A-15/22362', 'COQ23IA001217', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(15, 'COMPS', 'SCMCE', '04', '04', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(16, 'COMPS', 'SCMCE', '04', '05', '095', 'PE08Q5B5', '095', 'SVA360159', 'A-15/22377', 'COQ1CIA000667', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(17, 'COMPS', 'SCMCE', '04', '06', '0', 'PE08TBFE', '0', 'SVA585691', 'A-15/22368', 'COQ23IA001225', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(18, 'COMPS', 'SCMCE', '05', '01', 'A-01/52791', '0', '0', '151002107', '0', 'PE22HQDQ601582N', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(19, 'COMPS', 'SCMCE', '05', '02', 'A-15/22416', '0', '0', 'TW19HQAQ701651F', 'A-15/22370', 'COQ1CIA000697', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(20, 'COMPS', 'SCMCE', '05', '03', '0', '0', '0', '0', '0', 'PE22HQDQ601582N', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(21, 'COMPS', 'SCMCE', '05', '04', 'A-01/52318', '0', '0', '151002954', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(22, 'COMPS', 'SCMCE', '05', '05', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(23, 'COMPS', 'SCMCE', '05', '06', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(24, 'COMPS', 'SCMCE', '06', '01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(25, 'COMPS', 'SCMCE', '06', '02', '0', 'PE08TBNC', '0', 'SVA585341', '0', '151002071', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(26, 'COMPS', 'SCMCE', '06', '03', '0', 'PE08TBCY', '0', 'SVA585330', '0', '409SPDT1R002', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(27, 'COMPS', 'SCMCE', '06', '04', '0', 'PE00DC70', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(28, 'COMPS', 'SCMCE', '06', '05', '104', 'PE097C6K', '104', 'SVA370443', 'A-15/22371', 'COQ23IA001216', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(29, 'COMPS', 'SCMCE', '06', '06', '093', 'PE08Q5C2', '093', 'SVA362938', 'A-15/22361', 'COQ23IA001582', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(30, 'COMPS', 'SCMCE', '07', '01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(31, 'COMPS', 'SCMCE', '07', '02', '096', 'PE08Q5B9', '096', 'SVA362077', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(32, 'COMPS', 'SCMCE', '07', '03', '110', 'PE0823VA', '110', 'VA648822', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(33, 'COMPS', 'SCMCE', '07', '04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(34, 'COMPS', 'SCMCE', '07', '05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(35, 'COMPS', 'SCMCE', '07', '06', '109', 'PE08M39Z', '109', 'VA701701', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(36, 'COMPS', 'SCMCE', '08', '01', '0', '0', 'A-15/22418', '151002497', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(37, 'COMPS', 'SCMCE', '08', '02', '099', 'PO08Q5BT', '099', 'SVA361578', 'A-15/22376', 'COQ1CIA000801', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(38, 'COMPS', 'SCMCE', '08', '03', '0', '0', 'A-15/22411', '151002099', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(39, 'COMPS', 'SCMCE', '08', '04', '0', '0', 'A-01/52313', '409SPQJ1T236', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(40, 'COMPS', 'SCMCE', '08', '05', '102', 'PE08Q5BF', '102', 'SVA360156', '0', '151002423', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(41, 'COMPS', 'SCMCE', '08', '06', '0', '0', 'A-15/22373', 'COQ23IA000425', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(42, 'COMPS', 'SCMCE', '09', '01', '107', 'PE097C6H', '107', 'SVA361858', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(43, 'COMPS', 'SCMCE', '09', '02', '098', 'PE08Q5B2', '098', 'SVA364871', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(44, 'COMPS', 'SCMCE', '09', '03', '0', 'PE08TBYE', '0', 'SVA586692', '0', '151002030', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(45, 'COMPS', 'SCMCE', '09', '04', '0', 'PE08TBD3', '0', 'SVA585950', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(46, 'COMPS', 'SCMCE', '09', '05', '097', 'PE08Q5BP', '097', 'SVA362074', 'A-15/22378', 'ABN14XA000305', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(47, 'COMPS', 'SCMCE', '09', '06', '0', '0', '0', '0', '0', '0', '0', '0', '2020-01-01 00:00:00', '2020-01-01 00:00:00');

ALTER SEQUENCE public.id_seq_controles RESTART WITH 48;

-- Path: controle.sql