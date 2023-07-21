INSERT INTO public.setors (id, ativo, nome, telefone, created_at, updated_at) VALUES 
(1, true, 'GABINETE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(2, true, 'AJ', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(3, true, 'ATP', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(4, true, 'COAPRH', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(5, true, 'COMPS', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(6, true, 'CORE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(7, true, 'COFIN', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(8, true, 'FEE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(9, true, 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(10, true, 'SEL', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(11, true, '1° DIREC', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(12, true, 'DRAE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(13, true, 'AUDITORIO', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(14, true, 'PROTOCOLO GERAL', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00');

ALTER SEQUENCE public.setores_id_seq RESTART WITH 15;

INSERT INTO public.subsetors (id, ativo, nome, nomesetor, telefone, created_at, updated_at) VALUES
(1, true, 'CERIMONIAL', 'GABINETE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(2, true, 'UES', 'GABINETE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(3, true, 'CPS', 'GABINETE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(4, true, 'UCI/SEEC', 'GABINETE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(5, true, 'UNDIME', 'GABINETE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(6, true, 'GABINETE', 'GABINETE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(7, true, 'AJ', 'AJ', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(8, true, 'ATP', 'ATP', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(9, true, 'QUALIDADE DE VIDA', 'COAPRH', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(10, true, 'ARQUIVO', 'COAPRH', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(11, true, 'COAPRH', 'COAPRH', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(12, true, 'SCMCE', 'COMPS', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(13, true, 'TRANSPORTE', 'COMPS', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(14, true, 'GPD', 'COMPS', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(15, true, 'CPL', 'COMPS', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(16, true, 'CEL/CPP', 'COMPS', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(17, true, 'COMPS', 'COMPS', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(18, true, 'CPATE', 'CORE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(19, true, 'CORE', 'CORE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(20, true, 'COFIN', 'CONFIN', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(21, true, 'UCI/FEE', 'FEE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(22, true, 'FEE', 'FEE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(23, true, 'NECAD', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(24, true, 'NEEPDH', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(25, true, 'NULLB', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(26, true, 'SOINSPE', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(27, true, 'ARQUIVO/SOINSPE', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(28, true, 'SUASE', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(29, true, 'SUEF', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(30, true, 'SUEJA', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(31, true, 'SUEM', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(32, true, 'SUEP', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(33, true, 'SUESP', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(34, true, 'LABCRIE', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(35, true, 'NEADTEC', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(36, true, 'CODESE', 'CODESE', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(37, true, 'SEL', 'SEL', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(38, true, 'DRAE', 'DIREC', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(39, true, 'PROTOCOLO', 'PROTOCOLO GERAL', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00'),
(40, true, 'AUDITORIO', 'AUDITORIO', 'Telefone Setor', '2020-01-01 00:00:00', '2020-01-01 00:00:00');

ALTER SEQUENCE public.subsetores_id_seq RESTART WITH 41;

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

ALTER SEQUENCE public.users_id_seq RESTART WITH 15;

-- Path: controle.sql